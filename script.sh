#!/bin/bash

# Check if a number is passed
if [ -z "$1" ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

# Fibonacci function
fib() {
    if [ $1 -le 1 ]; then
        echo $1
    else
        echo $(($(fib $(($1-1))) + $(fib $(($1-2)))))
    fi
}

# Generate HTML output
echo "<html><body><h1>Fibonacci Result</h1><p>Fib($1) = $(fib $1)</p></body></html>" > output.html

# Print confirmation
echo "Output saved to output.html"
