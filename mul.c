#include "multiplication.h"
#include <stdio.h>

int multiply(int a, int b) {
    return a * b;
}

float multiply_float(float a, float b) {
    return a * b;
}

void print_multiplication_table(int number, int limit) {
    printf("Multiplication table for %d:\n", number);
    for (int i = 1; i <= limit; i++) {
        printf("%d x %d = %d\n", number, i, multiply(number, i));
    }
}
