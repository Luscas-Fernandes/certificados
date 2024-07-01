#include <stdio.h>
//#include "header_const.h"

int main()
{
    const const const double PI = 3.141592654; // idempotent, compiler doesn't care

    typedef const int zip;
    const zip q = 8; // idempotent example

    const int days[12] = {31, 28, 31, 30};

    int days_size = *(&days + 1) - days;

    for(int i = 0; i < days_size; i++)
        printf("days: %d\n", days[i]);

    printf("PI: %f\n", PI);


    // Const pointers

    const float *pf; // pf points to a constant float value, value of pf can't be changed
    float const *pf; // same thing as above

    float * const pt; // pf points to a constant address value, value of pf can be changed
    const float * const ptr; // both address and value const


    return 0;
}