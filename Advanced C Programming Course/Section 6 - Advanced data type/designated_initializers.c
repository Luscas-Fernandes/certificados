#include <stdio.h>

/* struct point 
{
    int x, y;
}; */

struct point1
{
    int x, y, z;
};



int main()
{
    //int numbers[100] = {1, 2, 3, [4 ... 9] = 10, [10] = 80, 15, [70] = 50, [42] = 400}; // everything else is by default set to 0;
    /* int numbers1[] = {1, 2, 3, [10] = 80, 15, [70] = 50, [42] = 400};

    int n = sizeof(numbers1) / sizeof(numbers1[0]);
    printf("%d\n", n); */


    /* for(int i = 0; i < 100; i++)
        printf("numbers[%d] = %d\n", i, numbers[i]); */

    
    /* struct point p = {.x = 2, .y = 3};
    struct point p = {x: 2, y: 3};
    struct point p = {2, 3}; */

    struct point1 p1 = {.x = 0, .y = 1, .z = 2};
    struct point1 p2 = {.x = 20}; // everything else is by default set to 0;
    struct point1 p3 = {x: 7, y: 11, z: 21};
    struct point1 p4 = {20, 21, 452};
    
    printf("p1, x = %d, y = %d, z = %d\n", p1.x, p1.y, p1.z);
    printf("p2, x = %d, y = %d, z = %d\n", p2.x, p2.y, p2.z);
    printf("p3, x = %d, y = %d, z = %d\n", p3.x, p3.y, p3.z);
    printf("p4, x = %d, y = %d, z = %d\n", p4.x, p4.y, p4.z);

    return 0;
}