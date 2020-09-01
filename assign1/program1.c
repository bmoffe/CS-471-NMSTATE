//Brianna Moffett
//09.01.2020
//CS 471
//program1.c
#include <stdio.h>
#include <stdlib.h>

// PRE: assumes that 
void main()
{
	int A[100];
	char * s;
	A[0] = 66 + (114*256) + (105*256*256) + (97*256*256*256); //'BRIA'
	A[1] = 110 + (110*256) + (97*256*256) + (32*256*256*256); //'NNA '
	A[2] = 77 + (111*256) + (102*256*256) + (102*256*256*256); //'MOFF'
	A[3] = 101 + (116*256) + (116*256*256) + (46*256*256*256);
	A[4] = 0;
	s = (char *) A;
	printf("Beginning run...\n");
	printf("Hello, my name is %s\n",s);
	printf("\tBeginning memory segment experiments...\n");
	printf("\tMain location: %20u\n", main);
	printf("\tA location:    %20u\n", A);
	printf("\t*s location:   %20u\n", *s);
	printf("\ts location:    %20u\n", &s);
	printf("\tEnd of experiments.\n");
	printf("End of run.");
}
