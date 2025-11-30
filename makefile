# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c99
TARGET = multiplication_app
TEST_TARGET = test_multiplication
ARTIFACT_NAME = multiplication_binary.tar.gz

# Default target
all: build test

# Build the main application
build: $(TARGET)

$(TARGET): main.c mul.c multiplication.h
	$(CC) $(CFLAGS) -o $(TARGET) main.c mul.c

# Build and run tests
test: $(TEST_TARGET)
	./$(TEST_TARGET)

$(TEST_TARGET): test.c mul.c multiplication.h
	$(CC) $(CFLAGS) -o $(TEST_TARGET) test.c mul.c

# Create deployable artifact
package: build
	tar -czf $(ARTIFACT_NAME) $(TARGET) multiplication.h
	@echo "Artifact created: $(ARTIFACT_NAME)"

# Clean build artifacts
clean:
	rm -f $(TARGET) $(TEST_TARGET) $(ARTIFACT_NAME)

.PHONY: all build test package clean
