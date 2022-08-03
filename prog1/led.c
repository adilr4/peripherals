#include "led.h"

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

void modeIDLE(struct LED* led) {
  GPIOD->ODR &= ~(0x1000 << led->id);
}

void modeON(struct LED* led) {
  GPIOD->ODR |= (0x1000 << led->id);
}

void modeOFF(struct LED* led) {
  GPIOD->ODR &= ~(0x1000 << led->id);
}

void modeBLINK(struct LED* led) {
  GPIOD->MODER &= ~(0x03000000 << (led->id * 2));
  GPIOD->MODER |= 0x01000000 << (led->id * 2);
}

void modePWM(struct LED* led) {
  GPIOD->MODER &= ~(0x03000000 << (led->id * 2));
  GPIOD->MODER |= 0x02000000 << (led->id * 2);

  updateCCR(led);
}


