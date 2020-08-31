#include <stdio.h>
#include <stdlib.h>

void main()
{
	int A[100];
	char * s;
	A[0] = 66 + (82*256) + (73*256*256) + (65*256*256*256); //'BRIA'
	A[1] = 78 + (78*256) + (65*256*256) + (32*256*256*256); //'NNA '
	A[2] = 77 + (79*256) + (70*256*256) + (70*256*256*256); //'MOFF'
	A[3] = 69 + (84*256) + (84*256*256) + (46*256*256*256);
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
