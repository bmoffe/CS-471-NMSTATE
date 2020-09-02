//Brianna Moffett
//09.01.2020
//CS 471
//program1.c
#include <stdio.h>
#include <stdlib.h>

// PRE: Assumes that name is split into 4 bytes each, using ASCII values. Assumes that values are formatted for little endian processor.
// 
// POST: Main will print out name using a character pointer to the integer array in which the characters of the name are stored. Main also shows where various parts of the program are stored in memory. 
void f() //Tester function for memory location experiments
{
	char * B;
	B = malloc(100); //forcing array into heap
	printf("\tB location:    %20u\n", B);//B location in memory
}
void main()
{
	int A[100];
	static int c;
	char * s;
	c = 20;
	A[0] = 66 + (114*256) + (105*256*256) + (97*256*256*256); //'BRIA'
	A[1] = 110 + (110*256) + (97*256*256) + (32*256*256*256); //'NNA '
	A[2] = 77 + (111*256) + (102*256*256) + (102*256*256*256); //'MOFF'
	A[3] = 101 + (116*256) + (116*256*256) + (46*256*256*256); //'ETT.'
	A[4] = 0; //last int is 0
	s = (char *) A; //casting integer array
	printf("Beginning run...\n");
	printf("Hello, my name is %s (This is the version with the entire last integer set to 0.)\n",s);
	printf("\tBeginning memory segment experiments...\n");
	printf("\tMain location: %20u\n", main); //main location in memory
	printf("\tA location:    %20u\n", A); //integer array location in memory
	printf("\t&A location:   %20u\n", &A); //address of array
	printf("\ts location:    %20u\n", &s); //location of character pointer in memory
	printf("\t*s location:   %20u\n", s); //pointer to s
	printf("\tc location:    %20u\n", c); //location of static variable in memory
	f(); //calling tester
	printf("\tf location:    %20u\n", f);//tester function location in memory
	printf("\tEnd of memory segment experiments.\n");
	printf("\tBeginning name experiment...\n"); //Conducting experiment to show whether or not setting the last byte as 0 matters in terms of the output
	A[0] = 66 + (114*256) + (105*256*256) + (97*256*256*256); //'Bria'
	A[1] = 110 + (110*256) + (97*256*256) + (32*256*256*256); //'nna '
	A[2] = 77 + (111*256) + (102*256*256) + (102*256*256*256); //'Moff
	A[3] = 101 + (116*256) + (116*256*256) + 0; //'ett ' (Leaving the last byte as 0)
	printf("\t\tHello, my name is %s (This is the version with the last byte set to 0.)\n",s);
	printf("End of run.\n"); //End run
}
