#include <ctype.h>
#include <stdio.h>

int string2num (char *s) {
  int a = 0;
  for (; *s; s++)
    a = a*10 + (*s - '0');
  return a;
}

int string2num_base (char* s, short int n){
    int a = 0;
    for(; *s; s++)
    a = a*n + (*s - '0');
    return a;
}


int string2num_base_updated (char* s, short int n){
    int a = 0;
    for(; *s; s++){
        char var = *s;
        if (isdigit(var)) a = a*n + (*s - '0');
        else a = a*n + ((*s - 'a')+10);
    }
    return a;
}

int main (void) {
  printf("%d\n", string2num_base_updated("1a", 16));
  printf("%d\n", string2num_base_updated("a09b", 16));
  printf("%d\n", string2num_base_updated("z09b", 36));
  return 0;
}