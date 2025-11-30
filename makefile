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

$(TARGET): main.c multiplication.c multiplication.h
	$(CC) $(CFLAGS) -o $(TARGET) main.c multiplication.c

# Build and run tests
test: $(TEST_TARGET)
	./$(TEST_TARGET)

$(TEST_TARGET): test_multiplication.c multiplication.c multiplication.h
	$(CC) $(CFLAGS) -o $(TEST_TARGET) test_multiplication.c multiplication.c

# Create deployable artifact
package: build
	tar -czf $(ARTIFACT_NAME) $(TARGET) multiplication.h
	@echo "Artifact created: $(ARTIFACT_NAME)"

# Clean build artifacts
clean:
	rm -f $(TARGET) $(TEST_TARGET) $(ARTIFACT_NAME)

# Install dependencies (simulated)
install:
	@echo "Installing dependencies... (simulated step)"
	@echo "Dependencies installed successfully"

.PHONY: all build test package clean install
