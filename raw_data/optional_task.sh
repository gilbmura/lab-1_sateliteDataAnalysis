#!/bin/bash

# Prompt user for the African country
echo "Enter the African country you want humidity insights for:"
read country_name

# Ensure input is not empty
if [[ -z "$country_name" ]]; then
	    echo "Error: Country name cannot be empty!"
	        exit 1
fi

# Define file paths
input="/lab-1_sateliteDataAnalysis/raw_data/satelite_temperature_data.csv"
output_dir="/lab-1_sateliteDataAnalysis/analyzed_data/insights"
humidity_output="${output_dir}/humidity_data_${country_name}.csv"
temperature_output="${output_dir}/highest_temp.csv"
# Check if input file exists
if [[ ! -f "$input" ]]; then
	    echo "Error: Input file '$input' not found!"
	        exit 1
fi

# Ensure the output directory exists
mkdir -p "$output_dir"

# Extract humidity data for the given country
grep -i "$country_name" "$input" | cut -d, -f1,4 | sort -t, -k2,2nr > "$humidity_output"

# Check if humidity data was extracted
if [[ ! -s "$humidity_output" ]]; then
	    echo "No humidity data found for '$country_name'."
	        rm -f "$humidity_output"  # Remove empty file
	else
    echo "Filtered humidity data for '$country_name' saved to: $humidity_output"
fi

# Extract top 10 highest unique temperatures
cut -d, -f3 "$input" | sort -nr | uniq | head -n 10 > "$temperature_output"

# Check if temperature data was extracted
if [[ ! -s "$temperature_output" ]]; then
	    echo "No temperature data found!"
	        rm -f "$temperature_output"  # Remove empty file
	else
		    echo "Top 10 highest unique temperatures saved to: $temperature_output"
fi

