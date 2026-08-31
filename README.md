# Swiggy Restaurant Data Analysis (SQL)

## Project Overview
An end-to-end SQL analysis exploring over 150,000 restaurant listings on Swiggy across 600+ Indian cities. This project examines city-level restaurant density, cuisine popularity, pricing structures, and customer ratings to uncover key market trends and consumer preferences.

## Tools & Skills Used
* **Database / Query Engine**: MySQL
* **Dataset Source**: Kaggle (Swiggy Restaurants Dataset)
* **SQL Techniques**: Data Cleaning, Aggregations (`COUNT`, `SUM`, `AVG`), Grouping (`GROUP BY`, `HAVING`), Conditional Filtering, Type Casting, and String Manipulations.

## Key Queries & Analysis Performed
1. **City Distribution**: Identified total restaurant listings per city to find top supply hubs.
2. **Cuisine Popularity**: Aggregated most common cuisines offered across India.
3. **Chain Expansion**: Found top restaurant brands with the largest footprint (branch count).
4. **Top Rated Cities**: Calculated highest average customer ratings across cities with >50 restaurants.
5. **Cost Analysis**: Evaluated the average cost for two across different geographic markets.
6. **Cuisine Ratings**: Discovered which cuisines consistently perform highest in customer satisfaction.
7. **High-Value Performers**: Isolated top-tier restaurants maintaining a 4.5+ rating with over 1,000 customer reviews.
8. **Value for Money Index**: Combined high ratings and low average dining costs to find the best value-for-money food markets.

## Key Findings & Business Insights
* **Market Concentration**: Cities like Bangalore and Mumbai lead in total restaurant density and active food supply.
* **National Food Preferences**: North Indian, South Indian, and Chinese cuisines represent the vast majority of restaurant listings across India.
* **Top Chains**: Major national chains dominate multi-branch presence across major metro regions.
* **Rating & Price Dynamics**: Premium pricing does not always correlate to higher ratings; several tier-2 cities exhibit higher customer satisfaction at lower average price points.
* **Best Value Hubs**: Identified specific regional hubs offering high average restaurant ratings alongside below-average dining costs.

## How to Run This Project
1. Download the `swiggy.csv` dataset from Kaggle.
2. Load the dataset into your MySQL database setup.
3. Open and run the `swiggy_analysis.sql` script to execute the data cleaning and analysis queries.
