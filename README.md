# Sales Performance and Operational Risk Analysis

## Project Overview

This project presents an end-to-end sales and operational performance analysis, starting from a raw CSV dataset and transforming it into both an executive-level Excel dashboard and a structured SQL-based analytical environment.

The objective is not only to measure revenue performance but also to identify operational risks, particularly those related to shipping delays and lead time inefficiencies.

The project demonstrates a complete analytical workflow:
Raw Data → Data Cleaning → KPI Modeling → Dashboard Visualization → SQL-Based Validation & Analysis

## Business Objective

The primary goals of this analysis are:

- Evaluate overall sales performance (Revenue, Orders, Growth)
- Identify key revenue drivers (Segment and Category)
- Measure operational efficiency (Lead Time and Shipping Speed)
- Detect potential business risks related to delayed orders
- Provide actionable recommendations for management

## Dataset

Source: CSV dataset (sales transactional data)

The dataset includes:

- Order information
- Sales amount
- Category and Segment
- Region
- Shipping speed
- Lead time metrics

Data was cleaned and transformed before visualization and SQL modeling.

## Tools Used

- Microsoft Excel (Data Cleaning, Pivot Tables, KPI Modeling, Dashboard Design)
- MySQL (Database Structuring, Data Validation, Business Query Analysis)
- CSV dataset processing
- SQL-based analytical modeling

## SQL Workflow Explanation

### 01_table_creation.sql
- Creates the database and structured sales table to store transactional data.
This ensures the project can be replicated from scratch.

### 02_data_validation.sql
- Performs data validation checks including:
- Total row verification
- Date range inspection
- Missing value detection
- Basic integrity checks

This step ensures analytical reliability before generating insights.

### 03_sales_analysis.sql

Contains business queries that reproduce dashboard KPIs, including:
- Total Sales and YoY Growth
- Total Orders
- Sales by Segment and Category
- Monthly Sales Trend
- Average Lead Time
- Percentage of Slow Orders
- Regional Shipping Performance

All executive insights shown in the Excel dashboard are reproducible via SQL.

## Dashboard Preview

![Superstore Sales Dashboard](Superstore%20Sales%20Dashboard.png)

- The dashboard contains:
- Total Sales and YoY Growth
- Total Orders
- Top Category by Sales
- Average Lead Time
- Percentage of Slow Orders
- Sales by Month (Trend Analysis)
- Sales by Segment
- Sales by Category
- Lead Time by Region
- Order Distribution by Shipping Speed
- Regional Shipping Performance Analysis

The dashboard is structured to support executive-level review.

## Key Insights

- Sales increased by 15% YoY, driven mainly by the Consumer segment (53%) and Furniture category (49%).
- 18% of total orders experienced delays, indicating operational risk.
- West region shows the highest number of slow shipments.
- Lead time in West is slightly higher compared to other regions.

These findings suggest that while revenue performance is strong, operational bottlenecks may impact customer satisfaction if not addressed.

## Business Recommendations

- Conduct operational audit in West region to reduce slow shipment rate.
- Monitor lead time against SLA benchmarks.
- Align logistics performance with revenue-driving segments.
- Implement continuous monitoring dashboard for monthly review.

## How to Use

1. Import the CSV dataset into MySQL.
2. Run 01_table_creation.sql.
3. Run 02_data_validation.sql.
4. Run 03_sales_analysis.sql.
5. Open the Excel dashboard file to compare KPI outputs.
6. Use filters (Year, Quarter) to explore trends.

## Future Improvements

- Estimate revenue impact of delayed orders.
- Add SLA benchmark modeling.
- Introduce profit margin analysis.
- Build a Power BI or Looker Studio version.
- Implement automated reporting using SQL views.
