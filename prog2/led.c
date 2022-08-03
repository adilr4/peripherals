#include "led.h"

const char* modes[] = {"IDLE", "ON", "OFF", "BLINK", "PWM"};
uint16_t pwm[PWM_CNT_ARRAY_SIZE] = {0,   1,   2,   3,   5,   8,   11,
                                    17,  23,  31,  39,  50,  61,  81,
                                    109, 172, 235, 372, 509, 754, 999};

bool (*modifyUP[3])(struct LED*) = {nextMode, increasePeriod,
                                    increaseDutyCycle};
bool (*modifyDOWN[3])(struct LED*) = {previousMode, decreasePeriod,
                                      decreaseDutyCycle};
void (*changingModes[5])(struct LED*) = {modeIDLE, modeON, modeOFF, modeBLINK,
                                         modePWM};

bool nextMode(struct LED* led) {
  if (led->mode == PWM) return false;

  ++led->mode;
  changingModes[led->mode](led);
  return true;
}

bool previousMode(struct LED* led) {
  if (led->mode == IDLE) return false;

  --led->mode;
  changingModes[led->mode](led);
  return true;
}

bool increasePeriod(struct LED* led) {
  if (led->period == MAX_PERIOD) return false;

  led->period += 100;
  return true;
}

bool decreasePeriod(struct LED* led) {
  if (led->period == MIN_PERIOD) return false;

  led->period -= 100;
  return true;
}

void updateCCR(struct LED* led) {
  if (led->id == 0)
    TIM4->CCR1 = pwm[led->dutyCycle];
  else if (led->id == 1)
    TIM4->CCR2 = pwm[led->dutyCycle];
  else if (led->id == 2)
    TIM4->CCR3 = pwm[led->dutyCycle];
  else if (led->id == 3)
    TIM4->CCR4 = pwm[led->dutyCycle];
}

bool increaseDutyCycle(struct LED* led) {
  if (led->dutyCycle == 20) return false;

  ++led->dutyCycle;
  updateCCR(led);
  return true;
}

bool decreaseDutyCycle(struct LED* led) {
  if (led->dutyCycle == 0) return false;

  --led->dutyCycle;
  updateCCR(led);
  return true;
}

void modeIDLE(struct LED* led) { GPIOD->ODR &= ~(0x1000 << led->id); }

void modeON(struct LED* led) { GPIOD->ODR |= (0x1000 << led->id); }

void modeOFF(struct LED* led) { GPIOD->ODR &= ~(0x1000 << led->id); }

void modeBLINK(struct LED* led) {
  GPIOD->MODER &= ~(0x03000000 << (led->id * 2));
  GPIOD->MODER |= 0x01000000 << (led->id * 2);
}

void modePWM(struct LED* led) {
  GPIOD->MODER &= ~(0x03000000 << (led->id * 2));
  GPIOD->MODER |= 0x02000000 << (led->id * 2);

  updateCCR(led);
}

