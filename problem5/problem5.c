#include <stdio.h>
#include <stdbool.h>
#include "problem5.h"

bool divisible_up_to(long x, long y) {
  for (long z = 2; z <= y; z++) {
    if (x % z != 0) {
      return false;
    }
  }

  return true;
}

long first_divisible_up_to(long y) {
  long x = 2;

  while (!divisible_up_to(x, y)) {
    x++;
  }

  return x;
}

int main() {
  printf("%ld\n", first_divisible_up_to(20));

  return 0;
}
