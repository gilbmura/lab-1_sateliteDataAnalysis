# Analyzed Data

This directory contains the results of the analysis conducted on the satellite temperature dataset`satelite_temperature_data.csv`from the scripts written in the raw_data directory. The analysis was performed using various Linux commands such as `grep`, `sort`, `head`, etc., and includes the following outputs:

## Files

1. **`highest_temp.csv`**
   - This file contains the top 10 highest temperatures extracted from the dataset.
   - The data is sorted in descending order of temperature (highest to lowest).
   - Columns include: Country, Date, Temperature, Humidity, and others.

2. **`humidity_data_<country_name>.csv`**
   - This file contains the data for a specific country, sorted in descending order based on humidity.
   - The `<country_name>` will be replaced with the name of the country (e.g., `humidity_data_Kenya.csv`).
   - The data is sorted with the highest humidity values at the top.
   - Columns include: Country, Date, Temperature, Humidity, and others.
