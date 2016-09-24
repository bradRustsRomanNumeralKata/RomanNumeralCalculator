## makefile for Roman Numeral Calculator Kata
## Brad Rust
## 9/24/2016

#create our compiler and flags variables
CC=gcc
CFLAGS= -g -std=c99 -Wall -Werror
#supposedly lcheck is enough, but I needed the other three to squelch the litanny of errors regarding timers and the like
LIBS=-lcheck -pthread -lm -lrt

all: testSyntax

%.o : %.c
	$(CC) $(CFLAGS) $<

testSyntax: CheckSyntax.o is_I_X_C-test.o
	$(CC) CheckSyntax.o is_I_X_C-test.o -o runSyntaxTests $(LIBS)

#compile the CheckSyntax function, create object
CheckSyntax.o: CheckSyntax.c CheckSyntax.h
	$(CC) -c CheckSyntax.c
	
#create the object for the 'IsTheCharacter_an_I_X_or_C' test
is_I_X_C-test.o: is_I_X_C-test.c CheckSyntax.h 
	$(CC) -c is_I_X_C-test.c
	
clean:
	rm -f -core *.o runSyntaxTests