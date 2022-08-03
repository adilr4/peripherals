#include "filterData.h"

float* fir_coeff = lpcoeff[0];  // treba inicijalizirati

float fout[ADC_BUFF_SIZE];
float fin[ADC_BUFF_SIZE], ftmp;
uint32_t m = 0;
int16_t fir_data[ADC_BUFF_SIZE];
uint32_t n = ADC_BUFF_SIZE / 2, k = 0;
uint16_t utmp16;

uint16_t adc_buff0[ADC_BUFF_SIZE];
uint16_t adc_buff1[ADC_BUFF_SIZE];

int filterFreq = MIN_FILTER_FREQ;
bool isStreamOn = false;

void filterData() {
  if ((DMA2_Stream2->CR & DMA_SxCR_CT) ==
      DMA_SxCR_CT) {  // we can read buffer 0
    for (k = 0; k < (n + FIR_N); k++) {
      if ((k >= ((FIR_N) / 2)) && (k < ((FIR_N) / 2 + n))) {
        fin[k] = 3.0 * ((float)adc_buff0[k]) / 4095;

      } else {
        fin[k] = 0;
      }
    }

    for (k = 0; k < n; k++) {
      ftmp = 0;
      for (m = 0; m < (FIR_N); m++) {
        ftmp += fir_coeff[m] * fin[k + m];
      }

      fir_data[k] = (int16_t)(ftmp * 4095 / 3.0);
    }

    for (k = 0; k < ((ADC_BUFF_SIZE) / 2); k++) {
      utmp16 = adc_buff0[k];
      putcharUSART3((utmp16 & 0xFF00) >> 8);
      putcharUSART3(utmp16 & 0x00FF);
    }
    for (k = 0; k < n; k++) {
      uint16_t utmp16 = fir_data[k];
      putcharUSART3((utmp16 & 0xFF00) >> 8);
      putcharUSART3(utmp16 & 0x00FF);
    }

  } else {  // we can read buffer 1
    for (k = 0; k < (n + FIR_N); k++) {
      if ((k >= ((FIR_N) / 2)) && (k < ((FIR_N) / 2 + n))) {
        fin[k] = 3.0 * ((float)adc_buff1[k]) / 4095;

      } else {
        fin[k] = 0;
      }
    }

    for (k = 0; k < n; k++) {
      ftmp = 0;
      for (m = 0; m < (FIR_N); m++) {
        ftmp += fir_coeff[m] * fin[k + m];
      }
      fir_data[k] = (int16_t)(ftmp * 4095 / 3.0);
    }

    for (k = 0; k < ((ADC_BUFF_SIZE) / 2); k++) {
      utmp16 = adc_buff1[k];
      putcharUSART3((utmp16 & 0xFF00) >> 8);
      putcharUSART3(utmp16 & 0x00FF);
    }

    for (k = 0; k < n; k++) {
      uint16_t utmp16 = fir_data[k];
      putcharUSART3((utmp16 & 0xFF00) >> 8);
      putcharUSART3(utmp16 & 0x00FF);
    }
  }
}

bool increaseFilterFreq() {
  if (filterFreq == MAX_FILTER_FREQ) return false;

  filterFreq += 500;
  fir_coeff = lpcoeff[filterFreq / 500 - 1];
  return true;
}

bool decreaseFilterFreq() {
  if (filterFreq == MIN_FILTER_FREQ) return false;

  filterFreq -= 500;
  fir_coeff = lpcoeff[filterFreq / 500 - 1];
  return true;
}

bool changeStream() {
  isStreamOn = !isStreamOn;
  return true;
}

