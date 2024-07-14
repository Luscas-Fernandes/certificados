#include <stdio.h>

struct packed_struct
{
    unsigned int :3; // :number, because it's not named, it's specified for padding by the 3 most right numbers of int bits
    unsigned int f1:1; 
    unsigned int f2:1;  
    unsigned int f3:1;  
    unsigned int type:8;
    unsigned int index:18;

}; // 32 bits

int main()
{
    struct packed_struct packed_ints;

    packed_ints.type = 7;

    if(packed_ints.f2 == 7)
        printf("some code here\n");

    return 0;
}