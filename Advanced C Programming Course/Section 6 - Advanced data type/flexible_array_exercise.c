#include <stdio.h>
#include <malloc.h>

struct myArray
{
    int length;
    int array[];
};


int main()
{
    int arraySize;
    struct myArray *arrayPtr;

    printf("what's the flexible array size ?\nSize: ");
    scanf("%d", &arraySize);
    
    size_t structSize = sizeof(struct myArray);
    arrayPtr = malloc(structSize + arraySize * sizeof(int));

    arrayPtr->length = arraySize;

    for(int i = 0; i < arraySize; i++) // elements on array by user or hard coded
    {
        printf("Enter the desired elements to array[%d]: ", i);
        scanf("%d", &(arrayPtr->array[i]));
        //arrayPtr->array[i] = 3 * (i + 1);
    }

    for(int i = 0; i < arraySize; i++)
        printf("Numbers of flexible array: array[%d] = %d\n", i, arrayPtr->array[i]);

    return 0;
}