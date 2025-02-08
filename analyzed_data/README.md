## Working on the Project

After forking and setting up collaborators, we followed these steps:

1. **Clone the Repository**  
   Clone your forked repository to your local machine:
   ```bash
   git clone https://github.com/your-username/project-name.git

# raw data
This directory contains our bash scripts and The file which we use as the input.

# Analyzed Data

This directory contains the results of the analysis conducted on the satellite temperature dataset`satelite_temperature_data.csv`from the scripts written in the raw_data directory. The analysis was performed using various Linux commands such as `grep`, `sort`, `head`, etc., and includes the following outputs:

## Files

1. **`highest_temp.csv`**
   - This file contains the top 10 highest temperatures extracted from the dataset.
   - The data is sorted in descending order of temperature (highest to lowest).
   - Columns include: Country, Date, Temperature, Humidity, and others.

2. **`humidity_data_<country_name>.csv`**
   - This file contains the data for a specific country, sorted in descending order based on humidity.
   - The `<country_name>` will be replaced with the name of the country (e.g., `humidity_data_Kenya.csv`) as the User chooses the country he wants.
   - The data is sorted with the highest humidity values at the top.
   - Columns include: Country, Date, Temperature, Humidity.

**Note 
  - To get the results you should specify the input path and the output path depending on where you cloned your repository
