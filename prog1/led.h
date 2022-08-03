#ifndef _LED_H_
#define _LED_H_

#include <stdio.h>
#include <stdbool.h>
#include "stm32f4xx.h"

#define IDLE 0
#define ON 1
#define OFF 2
#define BLINK 3
#define PWM 4

#define MAX_PERIOD 2000
#define MIN_PERIOD 100
#define PWM_CNT_ARRAY_SIZE 21

static const char* modes[] = {"IDLE", "ON", "OFF", "BLINK", "PWM"};
static uint16_t pwm[PWM_CNT_ARRAY_SIZE] = {0,1,2,3,5,8,11,17,23,31,39,50,61,81,109,172,235,372,509,754,999};

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

static bool (*modifyUP[3]) (struct LED*) = {nextMode, increasePeriod, increaseDutyCycle};
static bool (*modifyDOWN[3]) (struct LED*) = {previousMode, decreasePeriod, decreaseDutyCycle};
static void (*changingModes[5]) (struct LED*) = {modeIDLE, modeON, modeOFF, modeBLINK, modePWM};
#endif
