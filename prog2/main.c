#include "adc.h"
#include "arrowactions.h"
#include "dac.h"
#include "delay.h"
#include "led.h"
#include "lis302dl.h"
#include "pushbutton.h"
#include "sinParams.h"
#include "stm32f4xx.h"
#include "usart.h"

#define COMMANDS_QUEUE_SIZE 100
void (*commandsQueue[100])();

struct LED leds[4] = {{0, IDLE, 1000, 10},
                      {1, IDLE, 1000, 10},
                      {2, IDLE, 1000, 10},
                      {3, IDLE, 1000, 10}};

volatile uint8_t w_queue = 0, r_queue = 0;
uint32_t temp;
float angles[3];
bool bufferPrepareSwitch = true;

void serviceIRQA();

void init();
void initialPrint();

int main(void) {
  init();

  uint32_t led1_time = getSYSTIMER();
  uint32_t led2_time = getSYSTIMER();
  uint32_t led3_time = getSYSTIMER();
  uint32_t led4_time = getSYSTIMER();
  uint32_t temp_time = getSYSTIMER();
  uint32_t accel_time = getSYSTIMER();

  printTemp(getADC1Temp());

  while (1) {
    if (r_queue != w_queue) {
      (*commandsQueue[r_queue++])();
      if (r_queue == COMMANDS_QUEUE_SIZE) r_queue = 0;
    }

    if (leds[0].mode == BLINK &&
        chk4TimeoutSYSTIMER(led1_time, leds[0].period) == SYSTIMER_TIMEOUT) {
      GPIOD->ODR ^= 0x1000;
      led1_time = getSYSTIMER();
    }
    if (leds[1].mode == BLINK &&
        chk4TimeoutSYSTIMER(led2_time, leds[1].period) == SYSTIMER_TIMEOUT) {
      GPIOD->ODR ^= 0x2000;
      led2_time = getSYSTIMER();
    }
    if (leds[2].mode == BLINK &&
        chk4TimeoutSYSTIMER(led3_time, leds[2].period) == SYSTIMER_TIMEOUT) {
      GPIOD->ODR ^= 0x4000;
      led3_time = getSYSTIMER();
    }
    if (leds[3].mode == BLINK &&
        chk4TimeoutSYSTIMER(led4_time, leds[3].period) == SYSTIMER_TIMEOUT) {
      GPIOD->ODR ^= 0x8000;
      led4_time = getSYSTIMER();
    }

    if (chk4TimeoutSYSTIMER(temp_time, 2000) == SYSTIMER_TIMEOUT) {
      printTemp(getADC1Temp());
      temp_time = getSYSTIMER();
    }

    if (chk4TimeoutSYSTIMER(accel_time, 100) == SYSTIMER_TIMEOUT) {
      getAngles();
      printAngles();
      accel_time = getSYSTIMER();
    }
  }
}

void USART3_IRQHandler(void) {
  USART3->SR &= ~(USART_SR_RXNE);
  if (isStreamOn) {
    commandsQueue[w_queue++] = filterData;
    if (w_queue == COMMANDS_QUEUE_SIZE) w_queue = 0;
  }
}

void DMA1_Stream5_IRQHandler(void) {
  DMA1->HIFCR |= DMA_HIFCR_CTCIF5;

  if (bufferPrepareSwitch)
    commandsQueue[w_queue++] = prepareValuesinDACbuff1;
  else
    commandsQueue[w_queue++] = prepareValuesinDACbuff2;

  if (w_queue == COMMANDS_QUEUE_SIZE) w_queue = 0;
  bufferPrepareSwitch != bufferPrepareSwitch;
}

void EXTI0_IRQHandler(void) {
  if ((EXTI->PR & EXTI_PR_PR0) ==
      EXTI_PR_PR0) {  // EXTI_Line0 interrupt pending?
    commandsQueue[w_queue++] = serviceIRQA;
    if (w_queue == COMMANDS_QUEUE_SIZE) w_queue = 0;
    EXTI->PR = EXTI_PR_PR0;  // clear EXTI_Line0 interrupt flag
  }
}

void serviceIRQA(void) {
  if ((GPIOA->IDR & 0x0001) == 0x0000)
    printInActive();
  else
    printActive();
}

void init() {
  initLCS();
  initUSART2(USART2_BAUDRATE_921600);
  initUSART3(USART2_BAUDRATE_921600);
  initialPrint();
  initADC1Temp();
  initSYSTIMER();
  initLIS302DL();
  enIrqUSART2();
  enIrqUSART3();

  // init PushButton
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
  GPIOA->MODER &= ~0x00000003;
  RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;  // enable clock on SYSCFG register
  SYSCFG->EXTICR[0] =
      SYSCFG_EXTICR1_EXTI0_PA;  // select PA 0 as interrupt source p259
  EXTI->IMR = EXTI_IMR_MR0;     // enable interrupt on EXTI_Line0
  EXTI->EMR &= ~EXTI_EMR_MR0;   // disable event on EXTI_Line0
  EXTI->RTSR = EXTI_RTSR_TR0;
  EXTI->FTSR = EXTI_FTSR_TR0;
  NVIC_EnableIRQ(EXTI0_IRQn);

  NVIC_EnableIRQ(DMA1_Stream5_IRQn);

  RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;  // enable TIM4 on APB1
  TIM4->PSC =
      0x0054 -
      0x0001;  // set TIM4 counting prescaler, 84MHz/84 = 1MHz -> count each 1us
  TIM4->ARR = 0x03E8;  // period of the PWM 1ms
  TIM4->CCMR1 |= (TIM_CCMR1_OC1PE) | (TIM_CCMR1_OC1M_2) | (TIM_CCMR1_OC1M_1);
  TIM4->CCMR1 |= (TIM_CCMR1_OC2PE) | (TIM_CCMR1_OC2M_2) | (TIM_CCMR1_OC2M_1);
  TIM4->CCMR2 |= (TIM_CCMR2_OC3PE) | (TIM_CCMR2_OC3M_2) | (TIM_CCMR2_OC3M_1);
  TIM4->CCMR2 |= (TIM_CCMR2_OC4PE) | (TIM_CCMR2_OC4M_2) | (TIM_CCMR2_OC4M_1);
  TIM4->CCER &=
      ~((TIM_CCER_CC1P) | (TIM_CCER_CC2P) | (TIM_CCER_CC3P) | (TIM_CCER_CC4P));
  TIM4->CR1 |= (TIM_CR1_ARPE) | (TIM_CR1_URS);
  // update event, reload all config
  TIM4->EGR |= TIM_EGR_UG;
  // activate capture compare mode
  TIM4->CCER |=
      (TIM_CCER_CC1E) | (TIM_CCER_CC2E) | (TIM_CCER_CC3E) | (TIM_CCER_CC4E);
  // start counter
  TIM4->CR1 |= TIM_CR1_CEN;

  RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
  GPIOD->MODER |= 0x55000000;
  GPIOD->OTYPER |= 0x00000000;
  GPIOD->OSPEEDR |= 0xFF000000;
  GPIOD->ODR = 0x0000;
  GPIOD->AFR[1] |= 0x22220000;

  initDmaDAC1(dac_buffer1, dac_buffer2, DAC_BUFFER_SIZE);
}

void getAngles() {
  int8_t accel_data[3];
  getDataLIS302DL(accel_data);

  float ax = (float)accel_data[0];
  float ay = (float)accel_data[1];
  float az = (float)accel_data[2];

  angles[0] = atanf(ax / sqrt(ay * ay + az * az)) * 180 / 3.14;
  angles[1] = atanf(ay / sqrt(ax * ax + az * az)) * 180 / 3.14;
  angles[2] = atanf(sqrt(ay * ay + ax * ax) / az) * 180 / 3.14;
}

void printTemp(uint32_t t) {
  sprintUSART2("\e[32;24H\e[5X\e[49m");
  printUSART2("%d", t);
  sprintUSART2("\e[33;3H\e[48X");
  if (t > 48) t = 48;

  sprintUSART2("\e[34m");
  if (t < 26) {
    printNchars('|', t);
  } else if (t < 36) {
    printNchars('|', 25);
    sprintUSART2("\e[33m");
    printNchars('|', t - 25);
  } else {
    printNchars('|', 25);
    sprintUSART2("\e[33m");
    printNchars('|', 10);
    sprintUSART2("\e[31m");
    printNchars('|', t - 35);
  }

  sprintUSART2("\e[39m");
}

void printAngles() {
  sprintUSART2("\e[36;18H\e[5X\e[49m");
  printUSART2("%d", (int)angles[0]);
  sprintUSART2("\e[36;48H\e[5X");
  printUSART2("%d", (int)angles[1]);
  sprintUSART2("\e[36;83H\e[5X");
  printUSART2("%d", (int)angles[2]);
}

void printHeader() {
  printNchars('-', 100);
  sprintUSART2("\n");
  putcharUSART2('|');
  printNchars(' ', 98);
  sprintUSART2("|\n|");
}

void printFooter() {
  sprintUSART2("|\n|");
  printNchars(' ', 98);
  sprintUSART2("|\n");
  printNchars('-', 100);
  sprintUSART2("\n");
}

void printLED() {
  printNchars(' ', 5);
  sprintUSART2("LED 1");
  sprintUSART2("\e[39m");
  printNchars(' ', 11);
  sprintUSART2("Mode:  IDLE ");
  printNchars(' ', 16);
  sprintUSART2("Period:  1000 [ms]");
  printNchars(' ', 8);
  sprintUSART2("Duty cycle:  50 ");
  printNchars(' ', 7);
}

void initialPrint() {
  sprintUSART2("\e[2J");    // erase display
  sprintUSART2("\e[1;1H");  // move cursor to beginning
  sprintUSART2("\e[35m");   // set foreground color to magenta
  sprintUSART2("\n\n\n");

  printHeader();

  /* putcharUSART2('|'); */
  printNchars(' ', 26);
  sprintUSART2("Mikroprocesorski sistemi u telekomunikacijama");
  printNchars(' ', 27);
  sprintUSART2("|\n");

  putcharUSART2('|');
  printNchars(' ', 26);
  sprintUSART2("Zadaca 2");
  printNchars(' ', 64);
  sprintUSART2("|\n");

  putcharUSART2('|');
  printNchars(' ', 26);
  sprintUSART2("2022");
  printNchars(' ', 68);
  /* sprintUSART2("|\n"); */

  printFooter();
  //---------------------------------------------------------//

  sprintUSART2("\e[32m");  // set foreground color to green
  printHeader();
  printLED();
  sprintUSART2("\e[32m");
  printFooter();

  sprintUSART2("\e[33m");  // set foreground color to yellow
  printHeader();
  printLED();
  sprintUSART2("\e[33m");
  printFooter();

  sprintUSART2("\e[31m");  // set foreground color to red
  printHeader();
  printLED();
  sprintUSART2("\e[31m");
  printFooter();

  sprintUSART2("\e[34m");  // set foreground color to blue
  printHeader();
  printLED();
  sprintUSART2("\e[34m");
  printFooter();

  sprintUSART2("\e[36m");
  printNchars('-', 100);
  sprintUSART2("\n|");
  sprintUSART2("\e[39m");
  sprintUSART2("     CPU temperature:");
  printNchars(' ', 29);
  sprintUSART2("\e[36m");
  putcharUSART2('|');
  printNchars(' ', 15);
  sprintUSART2("\e[39m");
  sprintUSART2("Push-Button state:");
  printNchars(' ', 14);
  sprintUSART2("\e[36m");
  sprintUSART2("|\n|");
  printNchars(' ', 50);
  putcharUSART2('|');
  printNchars(' ', 20);
  sprintUSART2("\e[31mINACTIVE\e[36m");
  printNchars(' ', 19);
  sprintUSART2("|\n");
  printNchars('-', 100);

  sprintUSART2("\n");
  printNchars('-', 100);
  sprintUSART2("\n|");
  printNchars(' ', 11);
  sprintUSART2("\e[39m");
  sprintUSART2("rho: ");
  printNchars(' ', 25);
  sprintUSART2("phi: ");
  printNchars(' ', 28);
  sprintUSART2("theta: ");
  printNchars(' ', 17);
  sprintUSART2("\e[36m");
  sprintUSART2("|\n");
  printNchars('-', 100);
  sprintUSART2("\n");

  printHeader();
  printNchars(' ', 10);
  sprintUSART2("\e[39m");
  sprintUSART2("f1: 100  Hz");
  printNchars(' ', 10);
  sprintUSART2("a1: 20   /100");

  printNchars(' ', 17);
  sprintUSART2("f2: 100  Hz");
  printNchars(' ', 10);
  sprintUSART2("a2: 20   /100");
  sprintUSART2("\e[36m");
  printNchars(' ', 3);
  printFooter();

  printHeader();
  printNchars(' ', 15);
  sprintUSART2("\e[39m");
  sprintUSART2("LP filter frequency: 500  Hz");
  printNchars(' ', 20);
  sprintUSART2("Stream: OFF");
  sprintUSART2("\e[36m");
  printNchars(' ', 24);
  printFooter();

  sprintUSART2("\e[39m");
}
