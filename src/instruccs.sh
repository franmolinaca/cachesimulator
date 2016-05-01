#!/bin/bash

echo "g++ cache.cpp -o cache.o -std=c++11 -lboost_iostreams -lboost_system"

#######Cache de 1kB
echo "./cache.o ../../memory-trace-gcc.trace 1 1024 16"
echo "./cache.o ../../memory-trace-gcc.trace 1 1024 64"
echo "./cache.o ../../memory-trace-gcc.trace 1 1024 128"
echo "./cache.o ../../memory-trace-gcc.trace 1 1024 521"

echo "./cache.o ../../memory-trace-gcc.trace 2 1024 16"
echo "./cache.o ../../memory-trace-gcc.trace 2 1024 64"
echo "./cache.o ../../memory-trace-gcc.trace 2 1024 128"
echo "./cache.o ../../memory-trace-gcc.trace 2 1024 521"

echo "./cache.o ../../memory-trace-gcc.trace 4 1024 16"
echo "./cache.o ../../memory-trace-gcc.trace 4 1024 64"
echo "./cache.o ../../memory-trace-gcc.trace 4 1024 128"
echo "./cache.o ../../memory-trace-gcc.trace 4 1024 521"

#######Cache de 64kB
echo "./cache.o ../../memory-trace-gcc.trace 1 65536 128"
echo "./cache.o ../../memory-trace-gcc.trace 1 65536 2048"
echo "./cache.o ../../memory-trace-gcc.trace 1 65536 16384"
echo "./cache.o ../../memory-trace-gcc.trace 1 65536 32768"

echo "./cache.o ../../memory-trace-gcc.trace 2 65536 128"
echo "./cache.o ../../memory-trace-gcc.trace 2 65536 2048"
echo "./cache.o ../../memory-trace-gcc.trace 2 65536 16384"
echo "./cache.o ../../memory-trace-gcc.trace 2 65536 32768"

echo "./cache.o ../../memory-trace-gcc.trace 4 65536 128"
echo "./cache.o ../../memory-trace-gcc.trace 4 65536 2048"
echo "./cache.o ../../memory-trace-gcc.trace 4 65536 16384"
echo "./cache.o ../../memory-trace-gcc.trace 4 65536 32768"

#######Cache de 1MB
echo "./cache.o ../../memory-trace-gcc.trace 1 1048576 128"
echo "./cache.o ../../memory-trace-gcc.trace 1 1048576 2048"
echo "./cache.o ../../memory-trace-gcc.trace 1 1048576 16384"
echo "./cache.o ../../memory-trace-gcc.trace 1 1048576 131072"

echo "./cache.o ../../memory-trace-gcc.trace 2 1048576 128"
echo "./cache.o ../../memory-trace-gcc.trace 2 1048576 2048"
echo "./cache.o ../../memory-trace-gcc.trace 2 1048576 16384"
echo "./cache.o ../../memory-trace-gcc.trace 2 1048576 131072"

echo "./cache.o ../../memory-trace-gcc.trace 4 1048576 128"
echo "./cache.o ../../memory-trace-gcc.trace 4 1048576 2048"
echo "./cache.o ../../memory-trace-gcc.trace 4 1048576 16384"
echo "./cache.o ../../memory-trace-gcc.trace 4 1048576 131072"

#######Cache de 2MB
echo "./cache.o ../../memory-trace-gcc.trace 1 2097152 128"
echo "./cache.o ../../memory-trace-gcc.trace 1 2097152 16384"
echo "./cache.o ../../memory-trace-gcc.trace 1 2097152 131072"
echo "./cache.o ../../memory-trace-gcc.trace 1 2097152 524288"

echo "./cache.o ../../memory-trace-gcc.trace 2 2097152 128"
echo "./cache.o ../../memory-trace-gcc.trace 2 2097152 16384"
echo "./cache.o ../../memory-trace-gcc.trace 2 2097152 131072"
echo "./cache.o ../../memory-trace-gcc.trace 2 2097152 524288"

echo "./cache.o ../../memory-trace-gcc.trace 4 2097152 128"
echo "./cache.o ../../memory-trace-gcc.trace 4 2097152 16384"
echo "./cache.o ../../memory-trace-gcc.trace 4 2097152 131072"
echo "./cache.o ../../memory-trace-gcc.trace 4 2097152 524288"
