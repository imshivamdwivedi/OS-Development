#ifndef STRING_H
#define STRING_H

#include "types.h"
uint16 strlength(string ch)
{
	uint16 i = 1;
	while(ch[i++]);
	return --i;
}

/* Added  a new function */  /* This function comapres two string and returns true(1) idf they are equal or false(0) if they are not equal */

uint8 strEql(string ch1 , string ch2)
{
    unit8 result = 1;
    unit8 size = strlength(ch1);
    if(size != strlength(ch2)) result = 0;
    else
    {
      uint8 i = 0;
      for(i;i<=size;i++)
      {
        if(ch1[i] != ch2[i]) result = 0;
      }
    }
    return result;
}


#endif
