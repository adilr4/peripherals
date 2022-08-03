#ifndef _USART2_H_
#define _USART2_H_

#include <stdio.h>
#include <stdarg.h>
#include "stm32f4xx.h"
#include "led.h"
#include "sinParams.h"
#include "misc.h"

#define USART2_BAUDRATE_921600 0x0000002D

void initUSART2(uint32_t);
void initUSART3(uint32_t);
void enIrqUSART2();

void putcharUSART2(uint8_t);
void putcharUSART3(uint8_t);
void sprintUSART2(uint8_t*); 
void printUSART2(char *str, ... );
void printNchars(char, uint16_t);
uint8_t getcharUSART3(void);

void arrowUP();
void arrowDOWN();
void arrowLEFT();
void arrowRIGHT();
void printField(int8_t);

extern int8_t cursor;
extern const char* cursorPositions[];

extern void (*commandsQueue[100]) ();
extern volatile uint8_t w_queue, r_queue;

extern struct LED leds[4];

#endif
