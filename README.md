# Tokyo Olympics Data Engineering Project

## Project Overview
- This project provides an in-depth analysis of Olympic data using various tools and technologies, including Azure Data Factory, Data Lake Gen 2, Synapse Analytics, and Azure Databricks.
- The pipeline extracts, transforms, and analyzes datasets related to athletes, coaches, teams, and medals to derive meaningful insights.

## Key Components
### Azure Data Lake Integration
- The project integrates with Azure's Data Lake Storage.

### Data Ingestion
- CSV files containing various datasets are read using Apache Spark, and DataFrames are created for further analysis.
- Datasets include:
  - `athletes.csv`: Information about athletes.
  - `coaches.csv`: Details of the coaches.
  - `entries-gender.csv`: Gender-based data of participants.
  - `medals.csv`: Medal information.
  - `teams.csv`: Details about teams.

### Data Analysis
- The analysis was performed using SQL and PySpark DataFrame transformations.
- SQL scripts included:
  - Counting athletes per country.
  - Calculating total medals won by each country.
  - Analyzing the average number of entries by gender for each discipline.

## Key Insights
- **Top Athletes per Country:** Identifies countries with the highest number of athletes.
- **Medal Tally:** Provides insights into the total number of medals won by countries, with a breakdown by gold, silver, and bronze.
- **Gender-Based Participation:** Analyzes participation by gender across various disciplines.

## Tools and Technologies Used
- **Azure Data Lake Storage:** For storing and accessing the data.
- **Databricks - Apache Spark & PySpark:** For data processing and analysis.
- **SQL:** For detailed data querying.

This project demonstrates the ability to efficiently handle and analyze large datasets in a cloud-based data engineering pipeline.
