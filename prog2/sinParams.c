#include "sinParams.h"

int sinParams[4] = {100, 20, 100, 20};  // f1, a1, f2, a2
uint16_t t = 0;

uint16_t sin1values[BUFFER_SIZE];
uint16_t numOfsin1values = 1000;
uint16_t sin2values[BUFFER_SIZE];
uint16_t numOfsin2values = 1000;

uint16_t dac_buffer1[DAC_BUFFER_SIZE];
uint16_t dac_buffer2[DAC_BUFFER_SIZE];

bool (*modify2UP[4])() = {increaseFrequency1, increaseAmplitude1,
                          increaseFrequency2, increaseAmplitude2};
bool (*modify2DOWN[4])() = {decreaseFrequency1, decreaseAmplitude1,
                            decreaseFrequency2, decreaseAmplitude2};

void initLCS() {
  calculateSin1Values();
  calculateSin2Values();

  prepareValuesinDACbuff1();
  prepareValuesinDACbuff2();
}

bool increaseAmplitude1() {
  if (sinParams[1] >= 0 && (abs(sinParams[1]) + abs(sinParams[3]) == 49))
    return false;

  ++sinParams[1];
  calculateSin1Values();

  return true;
}

bool increaseAmplitude2() {
  if (sinParams[3] >= 0 && (abs(sinParams[1]) + abs(sinParams[3]) == 49))
    return false;

  ++sinParams[3];
  calculateSin2Values();

  return true;
}

bool decreaseAmplitude1() {
  if (sinParams[1] <= 0 && (abs(sinParams[1]) + abs(sinParams[3]) == 49))
    return false;

  --sinParams[1];
  calculateSin1Values();

  return true;
}

bool decreaseAmplitude2() {
  if (sinParams[3] <= 0 && (abs(sinParams[1]) + abs(sinParams[3]) == 49))
    return false;

  --sinParams[3];
  calculateSin2Values();

  return true;
}

bool increaseFrequency1() {
  if (sinParams[0] == MAX_FREQUENCY) return false;

  t = 0;  // jel potrebno?
  sinParams[0] += 100;
  calculateSin1Values();

  return true;
}

bool increaseFrequency2() {
  if (sinParams[2] == MAX_FREQUENCY) return false;

  t = 0;  // jel potrebno?
  sinParams[2] += 100;
  calculateSin2Values();

  return true;
}

bool decreaseFrequency1() {
  if (sinParams[0] == MIN_FREQUENCY) return false;

  t = 0;  // jel potrebno?
  sinParams[0] -= 100;
  calculateSin1Values();

  return true;
}

bool decreaseFrequency2() {
  if (sinParams[2] == MIN_FREQUENCY) return false;

  t = 0;  // jel potrebno?
  sinParams[2] -= 100;
  calculateSin2Values();

  return true;
}

void calculateSin1Values() {
  float y, t = 0;
  numOfsin1values = 100000 / sinParams[0];

  for (uint16_t n = 0; n < numOfsin1values; ++n) {
    y = ((float)sinParams[1] / 100) * sinf(2 * PI * sinParams[0] * t) + 1.5;
    sin1values[n] = (uint16_t)(y * 4095);
    t = t + T;
  }
}

void calculateSin2Values() {
  float y, t = 0;
  numOfsin2values = 100000 / sinParams[2];

  for (uint16_t n = 0; n < numOfsin2values; n++) {
    y = ((float)sinParams[3] / 100) * sinf(2 * PI * sinParams[2] * t);
    sin2values[n] = (uint16_t)(y * 4095);
    t = t + T;
  }
}

void prepareValuesinDACbuff1() {
  for (uint16_t n = 0; n < DAC_BUFFER_SIZE; ++n) {
    dac_buffer1[n] =
        sin1values[t % numOfsin1values] + sin2values[t % numOfsin2values];

    ++t;
    if (t % numOfsin1values == 0 && t % numOfsin2values == 0) t = 0;
  }
}

void prepareValuesinDACbuff2() {
  for (uint16_t n = 0; n < DAC_BUFFER_SIZE; ++n) {
    dac_buffer2[n] =
        sin1values[t % numOfsin1values] + sin2values[t % numOfsin2values];

    ++t;
    if (t % numOfsin1values == 0 && t % numOfsin2values == 0) t = 0;
  }
}

