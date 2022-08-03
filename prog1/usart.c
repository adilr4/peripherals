#include "usart.h"

void initUSART2(uint32_t baudrate) {
  // wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
  // USART2: PA2 -> TX & PA3 -> RX
  //------------------------------------------------------------------

  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
  RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
  GPIOA->MODER |= (GPIO_MODER_MODER2_1) | (GPIO_MODER_MODER3_1);
  GPIOA->AFR[0] |= 0x00007700;

  GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR2_1;
  GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR3_1;

  USART2->BRR = baudrate;
  USART2->CR1 = USART_CR1_UE | USART_CR1_TE;
}

void initUSART3(uint32_t baudrate) {
  // wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
  // USART2: PD8 -> TX & PD9 -> RX
  //------------------------------------------------------------------

  RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
  RCC->APB1ENR |= RCC_APB1ENR_USART3EN;
  GPIOD->MODER |= (GPIO_MODER_MODER8_1) | (GPIO_MODER_MODER9_1);
  GPIOD->AFR[1] |= 0x00000077;

  GPIOD->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR8_1;
  GPIOD->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR9_1;

  USART3->BRR = baudrate;
  USART3->CR1 = USART_CR1_UE | USART_CR1_TE;
}

void enIrqUSART2(void) {
  USART2->CR1 &= ~(USART_CR1_UE);

  NVIC_EnableIRQ(USART2_IRQn);
  USART2->CR1 |= (USART_CR1_UE) | (USART_CR1_RE) | (USART_CR1_RXNEIE);
}

void USART2_IRQHandler(void) {
  uint8_t data;
  static uint8_t checkPoint = 0;

  if (USART2->SR & (USART_SR_RXNE)) {
    data = USART2->DR;
    // USART3->SR &= ~(USART_SR_RXNE);

    if (checkPoint == 0) {
      if (data != '\e') {
        return;
      } else {
        ++checkPoint;
        return;
      }
    } else if (checkPoint == 1) {
      if (data != '[') {
        checkPoint = 0;
        return;
      } else {
        ++checkPoint;
        return;
      }
    } else {
      if (data == 'A')
        commandsQueue[w_queue++] = arrowUP;
      else if (data == 'B')
        commandsQueue[w_queue++] = arrowDOWN;
      else if (data == 'C') {
        commandsQueue[w_queue++] = arrowRIGHT;
        /* ++w_queue; */
        /* sprintUSART2("r"); */
      } else if (data == 'D')
        commandsQueue[w_queue++] = arrowLEFT;

      if (w_queue == 100) w_queue = 0;
      checkPoint = 0;
    }
  }
}

void putcharUSART2(uint8_t data) {  /// print one character to USART2
  while (!(USART2->SR & USART_SR_TC))
    ;
  USART2->DR = data;
}

void putcharUSART3(uint8_t data) {  /// print one character to USART2
  while (!(USART3->SR & USART_SR_TC))
    ;
  USART3->DR = data;
}

uint8_t getcharUSART3(void) {  /// get one character from USART3
  uint8_t data;
  USART3->CR1 |= USART_CR1_UE | USART_CR1_RE;  // enable usart	and Rx
  while ((USART3->SR & USART_SR_RXNE) != USART_SR_RXNE)
    ;  // wait until data ready

  data = USART3->DR;               // send data
  USART3->SR &= ~(USART_SR_RXNE);  // clear Rx data ready flag
  USART3->CR1 &= ~(USART_CR1_RE);
  return data;
}

void sprintUSART2(uint8_t *str) {
  uint16_t k = 0;

  while (str[k] != '\0') {
    putcharUSART2(str[k]);
    if (str[k] == '\n') putcharUSART2('\r');
    k++;

    /* if (k == MAX_PRINT_STRING_SIZE) break; */
  }
}

void printNchars(char c, uint16_t n) {
  while (n-- > 0) putcharUSART2(c);
}

void printUSART2(char *str, ...) {  /// print text and up to 10 arguments!
  uint8_t rstr[40];                 // 33 max -> 32 ASCII for 32 bits and NULL
  uint16_t k = 0;
  uint16_t arg_type;
  uint32_t utmp32;
  uint32_t *p_uint32;
  char *p_char;
  va_list vl;

  // va_start(vl, 10);													// always pass
  // the last named parameter to va_start, for compatibility with older
  // compilers
  va_start(vl, str);  // always pass the last named parameter to va_start, for
                      // compatibility with older compilers
  while (str[k] != 0x00) {
    if (str[k] == '%') {
      if (str[k + 1] != 0x00) {
        switch (str[k + 1]) {
          case ('d'): {               // decimal
            if (str[k + 2] == 'b') {  // byte
              utmp32 = va_arg(vl, int);
              arg_type = (PRINT_ARG_TYPE_DECIMAL_BYTE);
            } else if (str[k + 2] == 'h') {  // half word
              utmp32 = va_arg(vl, int);
              arg_type = (PRINT_ARG_TYPE_DECIMAL_HALFWORD);
            } else if (str[k + 2] == 'w') {  // word
              utmp32 = va_arg(vl, uint32_t);
              arg_type = (PRINT_ARG_TYPE_DECIMAL_WORD);
            } else {  // default word
              utmp32 = va_arg(vl, uint32_t);
              arg_type = (PRINT_ARG_TYPE_DECIMAL_WORD);
              k--;
            }

            k++;
            p_uint32 = &utmp32;
            break;
          }
          case ('c'): {  // character
            char tchar = va_arg(vl, int);
            putcharUSART2(tchar);
            arg_type = (PRINT_ARG_TYPE_CHARACTER);
            break;
          }
          case ('s'): {  // string
            p_char = va_arg(vl, char *);
            sprintUSART2((uint8_t *)p_char);
            arg_type = (PRINT_ARG_TYPE_STRING);
            break;
          }
          default: {
            utmp32 = 0;
            p_uint32 = &utmp32;
            arg_type = (PRINT_ARG_TYPE_UNKNOWN);
            break;
          }
        }

        if (arg_type & (PRINT_ARG_TYPE_MASK_CHAR_STRING)) {
          getStr4NumMISC(arg_type, p_uint32, rstr);
          sprintUSART2(rstr);
        }
        k++;
      }
    } else {  // not a '%' char -> print the char
      putcharUSART2(str[k]);
      if (str[k] == '\n') putcharUSART2('\r');
    }
    k++;
  }

  va_end(vl);
  return;
}

