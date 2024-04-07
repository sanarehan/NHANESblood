# NHANES Blood Database Repository

This repository contains files relating to the NHANES Blood database. The purpose of this database is to provide a comprehensive resource for researchers and healthcare professionals interested in analyzing the prevalence and risk factors associated with thrombocytopenia and blood chemistry abnormalities using publicly available data from the National Health and Nutrition Examination Survey (NHANES).

## Source of Data:
The primary source of data for this database is the NHANES dataset, which is publicly available and widely recognized as a comprehensive source of health data in the United States. The data is accessed and utilized through the NHANES official website [here](https://wwwn.cdc.gov/nchs/nhanes/search/datapage.aspx?Component=Laboratory).

## Files Included:

1. **NHANES_Blood_R_Analysis.R**
   - This R script contains data processing and analysis code.
   - It imports NHANES data files in CSV format.
   - It tidies the data and performs various analyses, such as demographic summaries and blood chemistry measurements.
   - The script also includes queries to extract specific information from the database.

2. **NHANES_Blood_SQL_Schema.sql**
   - This SQL script creates the schema for the NHANES Blood database.
   - It defines tables for blood metals, blood VOCs (volatile organic compounds), blood chemistry, and demographics.
   - Relationships between tables are established to maintain data integrity.
   
3. **NHANES_Blood_SQL_Queries.sql**
   - This SQL script contains sample queries to extract insights from the NHANES Blood database.
   - Queries include demographic analyses, average blood chemistry values, and identifying individuals with specific blood metal or VOC levels.

**Note:** 
- Ensure proper directory paths are set within the R script for data file import and output.
- Adjust SQL queries as needed for specific analysis requirements.
- Refer to NHANES documentation for detailed information on data variables and coding.
