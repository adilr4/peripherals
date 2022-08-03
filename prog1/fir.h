#ifndef __FIRCOEFFS_H_
#define __FIRCOEFFS_H_

#include "stm32f4xx.h"
#define FIR_N 32

extern float* lpcoeffs[20];

extern float lpcoeff1[FIR_N];
extern float lpcoeff2[FIR_N];

#endif

