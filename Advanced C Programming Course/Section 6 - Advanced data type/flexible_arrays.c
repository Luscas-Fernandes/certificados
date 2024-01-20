#include <stdio.h>
#include <malloc.h>


struct s
{
    int arraySize;
    int array[];
};


int main()
{
    int desiredSize;
    struct s *ptr;

    ptr = malloc(sizeof(struct s) + desiredSize * sizeof(int));

    return 0;
}