/* Shaun Cooper

2020 September

   Brianna Moffett
   09.18.2020
   CS471

INPUT: NONE
OUTPUT: Memory addresses & various integer values

PRE: NONE
POST: NONE

   Changes made:
   	-added more single variables to f() to break it on purpose, for research reasons
*/

#include <stdio.h>

// dummy function which makes one important change

void f() {

    unsigned int *A;
    int i;
    //int a;
    //int b;
    //int c;
    //int d;
    //int e;
   // int f;
   // int g;
    //int h;
    //int j;

    //a = 0;
    //b = 1;
    //c = 2;
    //d = 3;
    //e = 4;
    //f = 5;
    //g = 6;
    //h = 7;
    //j = 8;

   A =(unsigned int *) &A;

    for (i=0;i<=10; i++)
       printf("%d %u\n",i,A[i]);

   A[6]=A[6]+10;
   printf("A is %u \n",A);

   for (i=-4;i<=10; i++)
    printf("%d %u\n",i,A[i]);
}

int main()
{

   int A[100];
   unsigned int L[4];
   L[0]=100;
   L[1]=200;
   L[2]=300;
   L[3]=400;
    for (int i=0; i < 100; i++) A[i]=i;

   printf("main is at %lu \n",main);

   printf("f is at %lu \n",f);
   printf("I am about to call f\n");
   f();
   printf("I called f\n");
   printf(" I am here\n");

}
