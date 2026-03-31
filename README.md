# SQL Business Analysis — E-commerce (Olist Dataset)

## Business Problem

The company has inconsistent revenue performance and lacks visibility into customer behavior and product performance.

The goal of this analysis is to identify:
- Key revenue drivers
- High-value customer segments
- Underperforming product categories
- Opportunities to improve retention and sales strategy

---

## Key Business Questions

1. What are the main drivers of revenue?
2. Which customers generate the most value?
3. Which product categories perform best and worst?
4. Is revenue growing or declining over time?
5. How dependent is the business on top customers?

---

## SQL Analysis

The analysis was performed using SQL with a focus on:

- Aggregations (SUM, AVG)
- Joins across multiple tables
- Customer segmentation
- Revenue trend analysis
- Ranking and window functions

Key queries include:
- Monthly revenue trend
- Revenue by product category
- Top customers by revenue
- Average order value
- Customer segmentation (new vs returning)

---

## Key Insights

- Total revenue is approximately $X million, with peak performance in November
- A small group of customers (~X%) generates the majority of total revenue
- The top 3 product categories contribute more than X% of overall sales
- Revenue shows strong seasonality, with Q4 significantly outperforming other periods
- Repeat customer rate is low (~X%), indicating weak retention

---

## Business Recommendations

- Focus retention efforts on high-value customers
- Diversify product strategy to reduce dependency on top categories
- Investigate causes of revenue drops in low-performing months
- Implement customer segmentation for targeted marketing campaigns

---

## Project Structure

- sql/
  - 01_kpi_overview.sql
  - 02_sales_trends.sql
  - 03_product_analysis.sql
  - 04_customer_analysis.sql

---

## Business Impact

This analysis helps the business:

- Identify where most revenue is generated
- Understand customer dependency risks
- Improve marketing targeting and retention strategy
- Optimize product focus based on performance
