#include "misc.h"

void getDNumMISC(uint8_t *dnum, uint32_t num)
{ /// calculate decimal digits from integer number 'num' and store them as ASCII char in dnum array
    uint8_t k;
    uint32_t step = 1000000000;

    for (k = 0; k < 10; k++)
    {                     // convert integer value in hex format to decimal format
        dnum[9 - k] = 48; // set char value
        while (num >= step)
        {
            dnum[9 - k]++;
            num -= step;
        }
        step /= 10;
    }
}

void putDNumMISC(uint8_t *dnum, uint16_t *m, uint8_t *r_str)
{ /// add unsigned integer number digits into string r_str
    uint8_t k = 0, flag = 0;

    for (k = 0; k < 10; k++)
    { // convert integer value in hex format to decimal format
        if (flag == 0)
        {
            if ((dnum[9 - k] != 48) || (k == 9)) // include the 0x00000000 number
            {
                flag = 1;
                r_str[(*m)] = dnum[9 - k];
                (*m)++;
            }
        }
        else
        {
            r_str[(*m)] = dnum[9 - k];
            (*m)++;
        }
    }
     r_str[(*m)] = 0x00;
}

void getStr4NumMISC(uint16_t type, uint32_t  * num, uint8_t * rstr)
{   /// print text and one signed integer or float number
    // the 'num' number is not modified!
    int32_t * p_int32;
    uint8_t dnum[11];
    uint8_t k;
    uint16_t m = 0;
    rstr[0] = 0x00;

    switch(type)
    {
		case(PRINT_ARG_TYPE_DECIMAL_BYTE):
		case(PRINT_ARG_TYPE_DECIMAL_HALFWORD):
		case(PRINT_ARG_TYPE_DECIMAL_WORD):
		{// conver integer number into appropriate string
			p_int32 = (int32_t *)num;
            if (*p_int32 < 0)
            { // print the sign character
                rstr[m] = '-';
                m++;
                *p_int32 = (*p_int32)*(-1);
            }

            getDNumMISC(dnum, (uint32_t)(*p_int32));
            putDNumMISC(dnum, &m, rstr);
			break;
		}
		case(PRINT_ARG_TYPE_CHARACTER):
		{
			break;
		}
		case(PRINT_ARG_TYPE_STRING):
		{
			break;
		}
		default:
		{
			rstr[0] = 0x00;
			break;
		}
	}
}

