#!/bin/bash

INPUT_FILE="/root/lab-1_sateliteDataAnalysis/raw_data/satelite_temperature_data.csv"
OUTPUT_FILE="analyzed_data/highest_data4.csv"

tail -n +2 "$INPUT_FILE" | cut -d ',' -f1 -f3 | sort -nr | uniq | head -10 > "$OUTPUT_FILE"

echo "Top 10 highest temperatures saved to $OUTPUT_FILE"
