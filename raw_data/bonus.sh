#!/bin/bash

echo "Enter the country name to extract insights:"
read country_name

# Validate input: ensure non-empty input
if [[ -z "$country_name" ]]; then
    echo "Error: Country name cannot be empty."
    exit 1
fi

# Define input and output paths
input="/root/lab-1_sateliteDataAnalysis/raw_data/satelite_temperature_data.csv"
output_dir="/root/lab-1_sateliteDataAnalysis/analyzed_data"
country_dir="$output_dir/${country_name}_insights"
humidity_output="$country_dir/humidity_data_${country_name}.csv"
temperature_output="$country_dir/temperature_data_${country_name}.csv"

# Ensure the country-specific output directory exists
mkdir -p "$country_dir"

# Check if the country exists in the dataset
if grep -iq "$country_name" "$input"; then
    # Extract and save humidity data (sorted descending)
    grep -i "$country_name" "$input" | sort -t, -k4,4nr > "$humidity_output"
    echo "Humidity data for $country_name has been saved to $humidity_output."

    # Extract and save temperature data (sorted descending)
    grep -i "$country_name" "$input" | sort -t, -k3,3nr > "$temperature_output"
    echo "Temperature data for $country_name has been saved to $temperature_output."
else
    echo "No data found for $country_name."
fi

