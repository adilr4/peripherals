#ifndef _PUSH_BUTTON_H_
#define _PUSH_BUTTON_H_

#include <stdbool.h>
#include "usart.h"

static bool active = false;

void printActive();
void printInActive();

// extern void (*commandsQueue[100]) ();
// extern volatile uint8_t w_queue, r_queue;

#endif
