#include <stdio.h>

int foo (int a[], int n);

int main (void) {
  int a[5] = {1, 2, 3, 4, 5};
  foo(a, 5);
  for (int i = 0; i < 5; i++) printf("%d ", a[i]);
  return 0;
}