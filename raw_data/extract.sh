#!/bin/bash

country_name="Libya"
input="/root/lab-1_sateliteDataAnalysis/raw_data/satelite_temperature_data.csv"
output="/root/lab-1_sateliteDataAnalysis/analyzed_data/humidity_data_${country_name}.csv"

# Extract rows for Libya, sort by humidity (descending), and save to output
grep "$country_name" "$input" | sort -t, -k4,4nr > "$output"

