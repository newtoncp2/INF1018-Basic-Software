#include <stdio.h>

unsigned char switch_byte(unsigned char x)
{
    return (x >> 4) | (x << 4);
}

unsigned char rotate_left(unsigned char x, int n)
{
    for (int i = 0; i < n; i++)
    {
        x = (x<<1) | (x>>7);
    }
    return x;
}

int main(void)
{
    printf("%08x \n", switch_byte(0xAB));
    printf("%08x \n", switch_byte(0x38));

    printf("%08x \n", rotate_left(0x61, 1));
    printf("%08x \n", rotate_left(0x61, 7));
}