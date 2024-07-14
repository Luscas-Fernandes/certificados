#include <stdio.h>

int main()
{
    const int MAX_INPUT = 5;
    float number, average, sum = 0.0;
    int i = 0;

    for(; i < MAX_INPUT; i++)
    {
        printf("loop %d. Enter a number: ", i);
        scanf("%f", &number);

        if (number < 0)
            goto jump; // spaghetti code, not to use

        sum += number;
    }

    jump: // spaghetti code
        average = sum / i;
        printf("Sum: %.2f\n", sum);
        printf("Average: %.2f\n", average);


    return 0;
}