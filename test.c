#include <stdio.h>
#include <assert.h>
#include "multiplication.h"

void test_multiply() {
    // Test positive numbers
    assert(multiply(5, 7) == 35);
    printf("✓ Test multiply(5, 7) passed\n");
    
    // Test with zero
    assert(multiply(0, 10) == 0);
    printf("✓ Test multiply(0, 10) passed\n");
    
    // Test negative numbers
    assert(multiply(-3, 4) == -12);
    printf("✓ Test multiply(-3, 4) passed\n");
    
    // Test commutative property
    assert(multiply(7, 5) == 35);
    printf("✓ Test multiply(7, 5) passed\n");
}

void test_multiply_float() {
    // Test float multiplication
    float result = multiply_float(2.5, 4.0);
    assert(result == 10.0);
    printf("✓ Test multiply_float(2.5, 4.0) passed\n");
    
    // Test float with decimals
    result = multiply_float(1.5, 2.5);
    assert(result == 3.75);
    printf("✓ Test multiply_float(1.5, 2.5) passed\n");
}

void test_edge_cases() {
    // Test identity property
    assert(multiply(1, 100) == 100);
    printf("✓ Test multiply(1, 100) passed\n");
    
    // Test both negative
    assert(multiply(-2, -3) == 6);
    printf("✓ Test multiply(-2, -3) passed\n");
}

int main() {
    printf("Running multiplication tests...\n");
    
    test_multiply();
    test_multiply_float();
    test_edge_cases();
    
    printf("\n🎉 All tests passed! (7/7)\n");
    return 0;
}
