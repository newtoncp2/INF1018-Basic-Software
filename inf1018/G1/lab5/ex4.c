#include <stdio.h>

void dump(void* p, int s){
    unsigned char* q = p;
    while(s--){
        printf("%p - %02x\n", q, *q);
        q++;
    }
}

struct X1 {
  char c1;
  int i;
  char c2;
} x1 = {0x1a, 0x5e4d3c2b, 0x6f};

struct X2 {
  long l;
  char c;
} x2 = {0xbbaa6f5e4d3c2b1a, 0xcc}; 

struct X3 {
  int i;
  char c1;
  char c2;
} x3 = {0x44332211, 0x55, 0x66};

struct X4 {
  struct X2 x;
  char c;
} x4 = {{0xbbaa6f5e4d3c2b1a, 0xcc}, 0xaa};

struct X5 {
  char c1;
  char c2;
  char c3;
} x5 = {0xaa, 0xbb, 0xcc};

struct X6 {
  short s1;
  int i;
  char c[3];
  short s2;
} x6 = {0x0201, 0x06050403, {0x07, 0x08, 0x09}, 0x1211};

union U1 {
  int i;
  char c[5];
} u1;

union U2 {
  short s;
  char c[5];
} u2;

int main(void)
{
    printf("Dump de X1:\n");
    dump(&x1, sizeof(struct X1));
    printf("\nDump de X2:\n");
    dump(&x2, sizeof(struct X2));
    printf("\nDump de X3:\n");
    dump(&x3, sizeof(struct X3));
    printf("\nDump de X4:\n");
    dump(&x4, sizeof(struct X4));
    printf("\nDump de X5:\n");
    dump(&x5, sizeof(struct X5));
    printf("\nDump de X6:\n");
    dump(&x6, sizeof(struct X6));


    u1.i = 0x01020304;
    printf("\nu1 (int)\n");
    dump(&u1, sizeof(u1));
    for (int i = 0; i <5; i++)
        u1.c[i] = 0xcc;
    printf("u1 (char)\n");
    dump(&u1, sizeof(u1));

    u2.s = 0x0102;
    printf("\nu2 (short)\n");
    dump(&u2, sizeof(u2));
    for (int i = 0; i <5; i++)
      u2.c[i] = 0xcc;
    printf("u2 (char)\n");
    dump(&u2, sizeof(u2));
  return 0;
}