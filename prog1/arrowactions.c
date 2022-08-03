#include "usart.h"

void arrowUP() {
  if ((cursor < 12 && modifyUP[cursor % 3](&leds[cursor / 3])) ||
      modify2UP[cursor - 12]()) {
    printUSART2("\e[%sH\e[5X\e[41m", cursorPositions[cursor]);
    printField(cursor);
    sprintUSART2("\e[49m");
  }
}

void arrowDOWN() {
  if ((cursor < 12 && modifyDOWN[cursor % 3](&leds[cursor / 3])) ||
      modify2DOWN[cursor - 12]()) {
    printUSART2("\e[%sH\e[5X\e[41m", cursorPositions[cursor]);
    printField(cursor);
    sprintUSART2("\e[49m");
  }
}

void arrowLEFT() {
  if (cursor == -1) return;

  if (cursor == 0) {
    sprintUSART2("\e[13;30H\e[5X");
    sprintUSART2(modes[leds[0].mode]);
    --cursor;
  } else {
    printUSART2("\e[%sH\e[5X", cursorPositions[cursor]);
    printField(cursor);

    --cursor;
    printUSART2("\e[%sH\e[5X\e[41m", cursorPositions[cursor]);
    printField(cursor);
    sprintUSART2("\e[49m");
  }
}

void arrowRIGHT() {
  if (cursor == 15) return;

  if (cursor == -1) {
    sprintUSART2("\e[13;30H\e[5X\e[41m");
    sprintUSART2(modes[leds[0].mode]);
    sprintUSART2("\e[49m");
    ++cursor;
  } else {
    printUSART2("\e[%sH\e[5X", cursorPositions[cursor]);
    printField(cursor);

    ++cursor;
    printUSART2("\e[%sH\e[5X\e[41m", cursorPositions[cursor]);
    printField(cursor);
    sprintUSART2("\e[49m");
  }
}

void printField(int8_t c) {
  if (c < 12) {
    int8_t f = c % 3;
    switch (f) {
      case 0:
        sprintUSART2(modes[leds[cursor / 3].mode]);
        break;
      case 1:
        printUSART2("%d", leds[cursor / 3].period);
        break;
      case 2:
        printUSART2("%d", leds[cursor / 3].dutyCycle * 5);
        break;
    }
  } else {
    printUSART2("%d", sinParams[c - 12]);
  }
}
