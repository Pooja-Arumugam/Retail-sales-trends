# Retail-sales-trends
### Azure Retail Analytics Project Project Overview
This project is an end-to-end cloud-based data pipeline for retail sales analytics built using Microsoft Azure. It demonstrates how raw data can be ingested, processed, served, and visualized using Azure-native tools. The solution follows a modern lakehouse architecture, enabling scalable and modular data workflows.

## Architecture Summary
The pipeline follows the Bronze–Silver–Gold architecture pattern:
- Bronze Layer: Raw data is ingested into Azure Data Lake Gen2 using Azure Data Factory.
- Silver Layer: Azure Databricks transforms raw data into cleaned, structured formats.
- Gold Layer: Synapse SQL serverless reads the cleaned data and exposes it as SQL views and tables.
- Reporting: Power BI visualizes the gold layer data for business insights.

## Technologies Used
- Azure Data Factory
- Azure Data Lake Storage Gen2
- Azure Databricks (PySpark)
- Azure Synapse Analytics (Serverless SQL)
- Power BI
- Python, SQL, PySpark
- Parquet file format

## Key Features
- Fully cloud-native pipeline
- Scalable transformation using Databricks
- Cost-efficient querying with serverless SQL
- Real-time dashboards with Power BI
- Modular architecture for easy maintenance and scaling

## Getting Started
Clone the repository
- Upload the .parquet files to your ADLS Gen2 storage
- Import and configure the ADF pipeline
- Run Databricks notebooks to clean and transform the data
- Use Synapse SQL views to query the Silver layer
- Build dashboards in Power BI using the Gold layer

## Sample Dashboard
This Power BI dashboard shows:
- Total quantity and customer counts
- Stocks by year (pie chart)
- Customer and order trends by year
