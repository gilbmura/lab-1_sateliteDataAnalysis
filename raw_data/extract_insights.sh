#!/bin/bash

# 1. Rename the directory (if required)
mv rename_directory analyzed_data

# 2. Remove unnecessary dummy files
rm dummy dummy-2 dummy-3.txt

# 3. Move the raw data CSV file to the raw_data folder
mv satelite_temperature_data.csv raw_data/

# 4. Extract the top 10 highest temperatures and save to analyzed_data
sort -t, -k3 -n -r raw_data/satelite_temperature_data.csv | head -n 11 > analyzed_data/highest_temp.csv

# 5. Extract data for a selected country (e.g., Kenya) and sort by humidity (descending order)
grep 'Kenya' raw_data/satelite_temperature_data.csv | sort -t, -k4 -n -r > analyzed_data/humidity_data_Kenya.csv

