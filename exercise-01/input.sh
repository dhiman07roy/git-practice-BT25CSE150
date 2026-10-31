#!/bin/bash

echo "Enter your name:"
read n

if [ -z "$n" ]; then
    echo "Hello User" > "$(dirname "$0")/output.txt"
else
    echo "Hello $n" > "$(dirname "$0")/output.txt"
fi
