#include <stdio.h>

int main()
{
    int result = 3;

    result = result << 2;
    printf("result left shifted by 2: %d\n", result);

    result = result << 2;
    printf("result left shifted by 4: %d\n", result);

    result = result >> 2;
    printf("result right shifted by 2: %d\n", result);

    result = result >> 2;
    printf("result right shifted by 4: %d\n", result);

    return 0;
}