#include <stdio.h>
#include <assert.h>
#include "multiplication.h"

void test_multiply() {
    assert(multiply(5, 7) == 35);
    printf("✓ Test multiply(5, 7) passed\n");
    
    assert(multiply(0, 10) == 0);
    printf("✓ Test multiply(0, 10) passed\n");
    
    assert(multiply(-3, 4) == -12);
    printf("✓ Test multiply(-3, 4) passed\n");
}

void test_multiply_float() {
    float result = multiply_float(2.5, 4.0);
    assert(result == 10.0);
    printf("✓ Test multiply_float(2.5, 4.0) passed\n");
}

void test_edge_cases() {
    assert(multiply(1, 100) == 100);
    printf("✓ Test multiply(1, 100) passed\n");
    
    assert(multiply(-2, -3) == 6);
    printf("✓ Test multiply(-2, -3) passed\n");
}

int main() {
    printf("Running multiplication tests...\n");
    
    test_multiply();
    test_multiply_float();
    test_edge_cases();
    
    printf("\n🎉 All tests passed! (6/6)\n");
    return 0;
}
