#!/bin/bash

# Set the input and output file paths

input="/root/lab-1_sateliteDataAnalysis/raw_data/satelite_temperature_data.csv"
output="/root/lab-1_sateliteDataAnalysis/analyzed_data/highest_temperatures.csv"

# Sort temperatures in descending order, remove duplicates, and get top 10 unique temperatures
cut -d, -f3 "$input" | sort -nr | uniq | head -n 10 > "$output"

# Optional: print the result to the console for confirmation
cat "$output"
