#include <stdio.h>
#include <string.h>

int main()
{
    char string[] = "ola mundo";
    char *pString = string; // Either string or &string[0] or string + 1 or &string[1] 
    char (*arrayPointer)[10] = &string; // Points to the whole array (I think so)

    /* printf("endereço: &string = %p\n", &string);
    printf("desreferenciar endereço: *(&string) = %s\n", *(&string));
    printf("*(&string + 1) - string = %lu\n", *(&string + 1) - string); */
   
   printf("arrayPointer 10chars string: %s\nEndereço ponteiro: %p\n", *arrayPointer, arrayPointer);
   arrayPointer++;
   printf("arrayPointer 10chars string: %s\nEndereço ponteiro: %p\n", *arrayPointer, arrayPointer);

    return 0;
}