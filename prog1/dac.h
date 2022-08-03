#ifndef __DAC_H
#define __DAC_H
#include "delay.h"
#include "stm32f4xx.h"

void initDAC1(void);
void initDAC2(void);
void setDAC1(uint16_t dac_data);
void initDmaDAC1(uint16_t* dBuff1, uint16_t* dBuff2, uint16_t size);

#endif
