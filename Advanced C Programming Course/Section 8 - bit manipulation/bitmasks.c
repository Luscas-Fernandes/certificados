#include <stdio.h>
#include "bitmasks.h" // testing headers, lol

int main() // from left to right, redo
{
    //__int8_t io_bitmask = 0b00000000; // __int8_t = 1byte, 8 bits. 
    //__int8_t man_bitmask = 0b00000000; // manipulator
    int user_input, input_check = 0, final_number; 

    printf("Enter any Number: ");
    scanf("%d", &user_input);
    printf("Input any bit to check and set(1): ");
    scanf("%d", &input_check);

    if ((user_input >> input_check) & 1)
        printf("bit %d is already set to one\n", input_check);
    else
    {
        printf("bit %d set to one\n", input_check);
        if (input_check)
            final_number = user_input | (1 << input_check);
    }

    printf("Initial number: %d (in decimal)\n", user_input);
    printf("Final number: %d (in decimal)\n", final_number);

    

    /* Logic here to get number &input_manipulator  */



    return 0;
}