#include <stdio.h>

int odd_ones(unsigned int x)
{
    x ^= x>>16;
    x ^= x>>8;
    x ^= x>>4;
    x ^= x>>2;
    x ^= x>>1;

    return x&1;
}

int main(void)
{
    printf("%08x \n", odd_ones(0x01010101));
    printf("%08x \n", odd_ones(0x01030101));
}