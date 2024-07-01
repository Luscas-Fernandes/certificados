#include <stdio.h>
#include <malloc.h>


void f1(int n, float * restrict a1, const float * restrict a2)
{
    for(int i = 0; i < n; i ++)
        a1[i] += a2[i];

    // restrict implies that each iteration of the loop is distinct of the others
    // loop can be progressively optimized
}


int main()
{
    // Use of strict type qualifier tells the compiler that a particular pointers
    // is the only reference to the value it points to throughout its scope 
    // not portable to c++


    /* int * restrict intPtrA;
    int * restrict intPtrB; */
    // Tells the compiler that, for the duration of the scope in which these vars
    // are defined, they will never access the same value.
    // Uses for pointing to Ints inside an array are mutually exclusive

    int array[10];
    int * restrict restar = (int *) malloc(10 * sizeof(int));
    int *par = array; // can't be restrict

    for(int i = 0; i < 10; i++)
    {
        par[i] += 5;
        restar[i] += 5;
        array[i] *= 2;
        par[i] += 5;
        par[i] += 3;
        restar[i] += 3;
    } // compiler can optimize the assembly lang to restar[i] += 8, in that case to be the sole initial mean of access


    return 0;
}