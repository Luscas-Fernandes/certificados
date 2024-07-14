#include <stdio.h>

int main()
{
    short int w1 = 20;
    short int w2 = 45;

    // swap without the use of a third variable
    // w1 ^= w1; sets variable to 0

    w1 ^= w2;
    w2 ^= w1;
    w1 ^= w2;

    printf("w1: %d w2: %d\n", w1, w2);

    return 0;
}