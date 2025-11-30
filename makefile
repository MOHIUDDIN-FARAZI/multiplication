# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c99
TARGET = multiplication_app
TEST_TARGET = test_multiplication
ARTIFACT_NAME = multiplication_binary.tar.gz
SRC_DIR = src

# Default target
all: build test

# Build the main application
build: $(TARGET)

$(TARGET): $(SRC_DIR)/main.c $(SRC_DIR)/multiplication.c $(SRC_DIR)/multiplication.h
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC_DIR)/main.c $(SRC_DIR)/multiplication.c

# Build and run tests
test: $(TEST_TARGET)
	./$(TEST_TARGET)

$(TEST_TARGET): $(SRC_DIR)/test_multiplication.c $(SRC_DIR)/multiplication.c $(SRC_DIR)/multiplication.h
	$(CC) $(CFLAGS) -o $(TEST_TARGET) $(SRC_DIR)/test_multiplication.c $(SRC_DIR)/multiplication.c

# Create deployable artifact
package: build
	tar -czf $(ARTIFACT_NAME) $(TARGET) $(SRC_DIR)/multiplication.h
	@echo "Artifact created: $(ARTIFACT_NAME)"

# Clean build artifacts
clean:
	rm -f $(TARGET) $(TEST_TARGET) $(ARTIFACT_NAME)

# Install dependencies (simulated)
install:
	@echo "Installing dependencies... (simulated step)"
	@echo "Dependencies installed successfully"

.PHONY: all build test package clean install
