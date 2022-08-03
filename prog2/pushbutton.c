#include "pushbutton.h"

void printActive () {
  sprintUSART2("\e[33;73H\e[8X\e[32mACTIVE\e[39m");
}

void printInActive () {
  sprintUSART2("\e[33;73H\e[6X\e[31mINACTIVE\e[39m");
}


/* void EXTI0_IRQHandler(void) */
/* { */
/* 	if((EXTI->PR & EXTI_PR_PR0) == EXTI_PR_PR0)							// EXTI_Line0 interrupt pending? */
/* 	{ */
/*     active = !active; */
/*     if (active) */
/*       commandsQueue[w_queue++] = printActive; */
/*     else */
/*       commandsQueue[w_queue++] = printInActive; */
/*  */
/*  */
/* 		EXTI->PR = EXTI_PR_PR0;											// clear EXTI_Line0 interrupt flag */
/* 	} */
/* } */
