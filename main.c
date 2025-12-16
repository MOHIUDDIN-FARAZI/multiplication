#include <stdio.h>
#include "multiplication.h"

int main() {
    int num1 = 6, num2 = 7;
    float f1 = 2.5, f2 = 3.2;
    
    printf("=== Multiplication Program ===\n");   
  
    int result_int = multiply(num1, num2);
    printf("%d * %d = %d\n", num1, num2, result_int);
    
    float result_float = multiply_float(f1, f2);
    printf("%.1f * %.1f = %.2f\n", f1, f2, result_float);
    
    print_multiplication_table(5, 10);
    
    return 0;
}
