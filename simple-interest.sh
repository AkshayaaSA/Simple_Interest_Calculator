#!/bin/bash

# Simple Interest Calculator

# Prompt the user for input
read -p "Enter the principal amount: " principal
read -p "Enter the annual rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

# Validate input (basic check)
if ! [[ $principal =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ $rate =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ $time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time)/100" | bc)

# Display result
echo "Simple Interest = $simple_interest"
