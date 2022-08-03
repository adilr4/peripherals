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

// extern int sinParams[4];
static int sinParams[4] = {100, 20, 100, 20};  // f1, a1, f2, a2
static uint16_t t = 0;

static uint16_t sin1values[BUFFER_SIZE];
static uint16_t numOfsin1values = 1000;
static uint16_t sin2values[BUFFER_SIZE];
static uint16_t numOfsin2values = 1000;

uint16_t dac_buffer1[DAC_BUFFER_SIZE];
uint16_t dac_buffer2[DAC_BUFFER_SIZE];

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

static bool (*modify2UP[4])() = {increaseFrequency1, increaseAmplitude1,
                                 increaseFrequency2, increaseAmplitude2};
static bool (*modify2DOWN[4])() = {decreaseFrequency1, decreaseAmplitude1,
                                   decreaseFrequency2, decreaseAmplitude2};

#endif
