#include <stdio.h>

int main()
{
    // Volatile keyword prevents the compile from "caching" variables
    // used in real-time / embedded systems programming
    // programs with a lot of thread or scarce resources use volatile keyword
    /* 
        Use cases:
        whenever a variable could change unexpectdly

        optimizer should be careful to reload the variable instead of holding a copy
        in a register
    
     */

    volatile int loc1;
    volatile int *ploc;



    return 0;
}