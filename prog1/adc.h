#ifndef __ADC1_H
#define __ADC1_H

#include <arm_math.h>
#include "delay.h"
#include "stm32f4xx.h"

#define ADC1_TEMP_V25 760   // 760 mV
#define ADC1_AVR_SLOPE 2.5  // 2.5 mV/C

void initADC1(void);
void initDmaADC1(uint16_t*, uint16_t*, uint16_t);
uint16_t getADC1(void);
void initADC1Temp(void);
uint16_t getADC1Temp(void);

#endif
