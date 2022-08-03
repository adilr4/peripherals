#ifndef _SIN_PARAMS_
#define _SIN_PARAMS_

#include <math.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

#define MAX_FREQUENCY 10000
#define MIN_FREQUENCY 100
#define DAC_BUFFER_SIZE 500
#define BUFFER_SIZE 1000
#define PI 3.14159
#define T 1e-5

extern int sinParams[4];
extern uint16_t t;

extern uint16_t sin1values[BUFFER_SIZE];
extern uint16_t numOfsin1values;
extern uint16_t sin2values[BUFFER_SIZE];
extern uint16_t numOfsin2values;

extern uint16_t dac_buffer1[DAC_BUFFER_SIZE];
extern uint16_t dac_buffer2[DAC_BUFFER_SIZE];

void initLCS();

bool increaseAmplitude1();
bool increaseAmplitude2();
bool increaseFrequency1();
bool increaseFrequency2();
bool decreaseAmplitude1();
bool decreaseAmplitude2();
bool decreaseFrequency1();
bool decreaseFrequency2();

void calculateSin1Values();
void calculateSin2Values();

void prepareValuesinDACbuff1();
void prepareValuesinDACbuff2();

extern bool (*modify2UP[4])();
extern bool (*modify2DOWN[4])();

#endif
