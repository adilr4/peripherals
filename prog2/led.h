#ifndef _LED_H_
#define _LED_H_

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include "stm32f4xx.h"

#define IDLE 0
#define ON 1
#define OFF 2
#define BLINK 3
#define PWM 4

#define MAX_PERIOD 2000
#define MIN_PERIOD 100
#define PWM_CNT_ARRAY_SIZE 21

extern const char* modes[];
extern uint16_t pwm[PWM_CNT_ARRAY_SIZE];

struct LED {
  uint16_t id;
  uint16_t mode;
  uint32_t period;
  uint16_t dutyCycle;
};

bool nextMode(struct LED*);
bool previousMode(struct LED*);
bool increasePeriod(struct LED*);
bool decreasePeriod(struct LED*);
bool increaseDutyCycle(struct LED*);
bool decreaseDutyCycle(struct LED*);

void modeIDLE(struct LED*);
void modeON(struct LED*);
void modeOFF(struct LED*);
void modeBLINK(struct LED*);
void modePWM(struct LED*);

extern bool (*modifyUP[3])(struct LED*);
extern bool (*modifyDOWN[3])(struct LED*);
extern void (*changingModes[5])(struct LED*);
#endif
