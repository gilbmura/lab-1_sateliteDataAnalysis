#!/bin/bash

echo "Which country Humidity do you want?"
read country_name
input="/root/lab-1_sateliteDataAnalysis/raw_data/satelite_temperature_data.csv"
output="/root/lab-1_sateliteDataAnalysis/analyzed_data/humidity_data_${country_name}.csv"

# Check if the country exists in the dataset
if grep -q "$country_name" "$input"; then
    # Extract rows for the given country, sort by humidity (descending), and save to output
    grep "$country_name" "$input" | sort -t, -k4,4nr > "$output"
    echo "Data for $country_name has been saved to $output."
else
    echo "No data found for $country_name."
fi

