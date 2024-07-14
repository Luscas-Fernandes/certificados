#include <stdio.h>

int main()
{
    int i = 0, sum = 0, data[100] = {0}; // setting all data[n] to 0;

    while(i < 100)
    {
        printf("sum: %d, i: %d\n", sum, i);
        sum += data[i] + i, i++; // comma operator using 2expressions, 1line
    }

    // int j = (f1(), f2()); // j = f2

    printf("teste1\n"),
    printf("teste2\n"),
    printf("teste3\n");

    return 0;
}