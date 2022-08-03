#ifndef __FILTER_DATA_
#define __FILTER_DATA_

#include <stdbool.h>
#include <stdint.h>
#include "fir.h"
#include "stm32f4xx.h"

#define ADC_BUFF_SIZE 500
#define MIN_FILTER_FREQ 500
#define MAX_FILTER_FREQ 10000

extern float* fir_coeff;
extern float fout[ADC_BUFF_SIZE];
extern float fin[ADC_BUFF_SIZE], ftmp;
extern uint32_t m;
extern int16_t fir_data[ADC_BUFF_SIZE];
extern uint32_t n, k;
extern uint16_t utmp16;

extern uint16_t adc_buff0[ADC_BUFF_SIZE];
extern uint16_t adc_buff1[ADC_BUFF_SIZE];

extern int filterFreq;
extern bool isStreamOn;

void filterData();
bool increaseFilterFreq();
bool decreaseFilterFreq();
bool changeStream();

#endif
