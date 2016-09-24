/*
 * CheckSyntax.c
 *
 *  Created on: Sep 24, 2016
 *      Author: brad rust
 *  Used to ensure rules in Kata exercise are followed
 *  w.r.t I, X, C == MAX(3)
 *        V, L, D == MAX(1)
 *  char array size is not dynamic since
 *  maximum roman numeral is 3999
 *  ie, strings are always fairly short
 */
#include "CheckSyntax.h"

_Bool is_I_X_C(char c)
{
	switch (c)
	{
	case 'I' :
		return 1;
	case 'X':
		return 1;
	case 'C' :
		return 1;
	default :
		return 0;
	}
}






