#include <stdio.h>

int fibonacci(int n);

int main() {
  int n = 45;
  // Print out number of characters in n
  printf("Fibonacci %i is %i\n", n, fibonacci(n));

  return 0;
}

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  } else {
    return fibonacci(n-1) + fibonacci(n-2);
  }
}
