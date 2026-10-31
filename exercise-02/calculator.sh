#!/bin/bash

echo "Enter 2 Numbers"
read a
read b

echo "Enter the operation you want to perform (+, -, *, /, %)"
read op

case $op in
    '+')
        result=$((a + b))
        echo "Result: $result" > "$(dirname "$0")/output.txt"
        ;;
    '-')
        result=$((a - b))
        echo "Result: $result" > "$(dirname "$0")/output.txt"
        ;;
    '*')
        result=$((a * b))
        echo "Result: $result" > "$(dirname "$0")/output.txt"
        ;;
    '/')
        if [ "$b" -ne 0 ]; then
            result=$((a / b))
            echo "Result: $result" > "$(dirname "$0")/output.txt"
        else
            echo "Error: Division by zero is not allowed." > "$(dirname "$0")/output.txt"
        fi
        ;;
    '%')
        if [ "$b" -ne 0 ]; then
            result=$((a % b))
            echo "Result: $result" > "$(dirname "$0")/output.txt"
        else
            echo "Error: Division by zero is not allowed." > "$(dirname "$0")/output.txt"
        fi
        ;;
    *)
        echo "Error: Invalid operation." > "$(dirname "$0")/output.txt"
        ;;
esac
