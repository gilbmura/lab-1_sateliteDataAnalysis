#!/bin/bash

# Asking the user the African country they want its humidity insights
echo "What African country do you want to see its humidity?"
read country_name

# Paths for input and output data
input="/root/lab-1_sateliteDataAnalysis/raw_data/satelite_temperature_data.csv"
output="/root/lab-1_sateliteDataAnalysis/analyzed_data/humidity_data_${country_name}.csv"

# Extracting rows for the country and humidity using cut and sorting in descending order
grep "$country_name" "$input" | sort -t, -k4,4nr > "$output"

echo "Filtered humidity data for $country_name has been saved to $output"
