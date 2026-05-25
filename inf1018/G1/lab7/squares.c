#include <stdio.h>

int main(void)
{
    for (int i = 1, int square = 0; i < 11; i++)
    {
        square = i*i;
        printf("%d ", square);
    }
    return 0;
}