#ifndef __MISC_H_
#define __MISC_H_

#include "stm32f4xx.h"

#define MAX_PRINT_STRING_SIZE					1024

#define PRINT_ARG_TYPE_DECIMAL_BYTE				0x0008		
#define PRINT_ARG_TYPE_DECIMAL_HALFWORD			0x0010		
#define PRINT_ARG_TYPE_DECIMAL_WORD				0x0020		
#define PRINT_ARG_TYPE_CHARACTER				0x0040			
#define PRINT_ARG_TYPE_STRING					0x0080			
#define PRINT_ARG_TYPE_UNKNOWN					0x0000

#define PRINT_ARG_TYPE_MASK_CHAR_STRING			~((PRINT_ARG_TYPE_CHARACTER)|(PRINT_ARG_TYPE_STRING))


void getDNumMISC(uint8_t * dnum, uint32_t num);
void putDNumMISC(uint8_t * dnum, uint16_t * m, uint8_t * r_str);
void getStr4NumMISC(uint16_t type, uint32_t  * num, uint8_t * r_str);

#endif 

