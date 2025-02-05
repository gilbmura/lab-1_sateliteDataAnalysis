#!/bin/bash

# Define input and output paths
input="/root/lab-1_sateliteDataAnalysis/raw_data/satelite_temperature_data.csv"
output_dir="/root/lab-1_sateliteDataAnalysis/analyzed_data"
data_dir="$output_dir/insights"
humidity_output="$data_dir/humidity_data.csv"
top_temperatures_output="$data_dir/top_10_temperatures.csv"

# Ensure the insights directory exists
mkdir -p "$data_dir"

# Prompt user for country name
echo "Enter the country name to extract humidity insights:"
read country_name

# Validate input
if [[ -z "$country_name" ]]; then
    echo "Error: Country name cannot be empty."
    exit 1
fi

# Check if the country exists in the dataset
if grep -iq "$country_name" "$input"; then
    grep -i "$country_name" "$input" | sort -t, -k4,4nr > "$humidity_output"
    echo "Humidity data for $country_name has been saved to $humidity_output."
else
    echo "No data found for $country_name."
fi

# Extract top 10 unique temperatures from the entire dataset
cut -d, -f3 "$input" | sort -nr | uniq | head -n 10 > "$top_temperatures_output"
echo "Top 10 unique temperatures have been saved to $top_temperatures_output."
