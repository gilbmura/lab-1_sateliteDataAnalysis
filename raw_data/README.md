# Satellite Temperature Data Analysis

This project analyzes satellite temperature data to extract key insights. The analysis was performed using Linux commands such as `cat`, `grep`, `cut`, `sort`, and others. Below are the steps for the analysis and instructions to use the scripts.

## Tasks

### Task 1: Extract Top 10 Highest Temperatures
The top 10 highest temperatures are extracted from the `satelite_temperature_data.csv` file and saved in `analyzed_data/highest_temp.csv`.

### Task 2: Extract Data for a Specific Country and Sort by Humidity
Data for a specific country is filtered from `satelite_temperature_data.csv`, sorted by humidity (highest to lowest), and saved in `analyzed_data/humidity_data_<country_name>.csv`.

### Optional Task (Bonus): Shell Script to Automate Extraction
A shell script (`extract_data.sh`) is provided to automate the extraction of:
1. The top 10 highest temperatures
2. The humidity data for a specific country;The user is prompted to randomly state the desired African country name.

