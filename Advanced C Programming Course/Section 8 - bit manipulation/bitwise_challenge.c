#include <stdio.h>
#include <stdlib.h>

char *decimalToBinary(int n)
{
    int comparison = 1, i = 31;
    char *decimals = (char *)malloc(33 * sizeof(char)); 
    
    // optimize so it allocate only the number of decimal places only 
    // get the number of decimal places, alloc decimal places + 2 (pos/neg & '\0')
    // i = decimalPlaces - 1

    if(decimals == NULL)
    {
        perror("couldn't allocate memory\n");
        exit(EXIT_FAILURE);
    }

    for(int j = 0; j < 32; j++)
    {
        decimals[j] = '0';
    }

    while(n != 0)
    {
        if (comparison == n)
        {
            decimals[i] = '1';
            n -= comparison;
        }
        else if (comparison < n)
        {
            comparison = comparison << 1;
            i--;
        }
        else if (comparison > n)
        {
            comparison = comparison >> 1;
            decimals[i + 1] = '1';
            n -= comparison;
            comparison = 1;
            i = 31;
        }
    }

    decimals[32] = '\0';

    return decimals;
}

void printDecimal(char *decimals)
{
    for(int i = 0; i < 32; i++)
    {
        printf("%c", decimals[i]);
        if (!((i + 1) % 4) && i != 0)
            printf(" ");
    }
    printf("\n");
}

void individualBitwiseOperators(int init_value, char *binary)
{
    printf("The result of applying the ~ operator on number %d (%s) is: %d\n", init_value, binary, ~init_value);
}

void applyOperators(int value1, int value2)
{

}

int main(int argc, char *argv[])
{
    int value1 = atoi(argv[1]);
    int value2 = atoi(argv[2]);
    char *binaryNumber1, *binaryNumber2;

    binaryNumber1 = decimalToBinary(value1);
    binaryNumber2 = decimalToBinary(value2);

    individualBitwiseOperators(value1, binaryNumber1);

    free(binaryNumber1);
    free(binaryNumber2);

    return 0;
}