#!/bin/bash
set -e

# Compilează programul
gcc hello.c -o hello

# Rulează programul și salvează output-ul
output=$(./hello)

# Verifică dacă output-ul este corect
if [ "$output" = "Hello, World!" ]; then
  echo "Test passed!"
  exit 0
else
  echo "Test failed: expected 'Hello, World!' but got '$output'"
  exit 1
fi
