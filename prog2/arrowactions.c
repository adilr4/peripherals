#include "arrowactions.h"

int8_t cursor = -1;
const char* cursorPositions[] = {"13;30", "13;60", "13;90", "18;30", "18;60",
                                 "18;90", "23;30", "23;60", "23;90", "28;30",
                                 "28;60", "28;90", "40;16", "40;37", "40;67",
                                 "40;88", "45;38", "45;73"};

void arrowUP() {
  if (cursor == -1) return;

  if ((cursor < 12 && modifyUP[cursor % 3](&leds[cursor / 3])) ||
      (cursor < 16 && modify2UP[cursor - 12]()) ||
      (cursor == 16 && increaseFilterFreq()) ||
      (cursor == 17 && changeStream())) {
    printUSART2("\e[%sH\e[5X\e[41m", cursorPositions[cursor]);
    printField(cursor);
    sprintUSART2("\e[49m");
  }
}

void arrowDOWN() {
  if (cursor == -1) return;

  if ((cursor < 12 && modifyDOWN[cursor % 3](&leds[cursor / 3])) ||
      (cursor < 16 && modify2DOWN[cursor - 12]()) ||
      (cursor == 16 && decreaseFilterFreq()) ||
      (cursor == 17 && changeStream())) {
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
  if (cursor == 17) return;

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
  } else if (c < 16) {
    printUSART2("%d", sinParams[c - 12]);
  } else if (c == 16) {
    printUSART2("%d", filterFreq);
  } else {
    if (isStreamOn)
      sprintUSART2("ON");
    else
      sprintUSART2("OFF");
  }
}
