#!/usr/bin/env sh
# Build and launch Tutor Seba
set -e
cd "$(dirname "$0")"

mkdir -p bin

echo "Compiling..."
javac -d bin Start.java Classes/*.java

echo "Starting Tutor Seba..."
exec java -cp bin Start
