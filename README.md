## Key Finding

The business is experiencing rapid revenue growth, exceeding 1M in peak months, but is critically dependent on new customers, with retention at only ~3%, creating a major long-term sustainability risk.

---

## Business Problem

The company experiences fluctuating revenue and lacks clear visibility into customer behavior, product performance, and retention.

The goal of this analysis is to identify key revenue drivers, evaluate customer value, and uncover opportunities for sustainable growth and retention improvement.

---

## Key Business Questions

1. What drives revenue growth over time?
2. Which product categories generate the most revenue?
3. Who are the most valuable customers?
4. How strong is customer retention?
5. Which regions contribute the most to revenue?

---

## SQL Analysis

The analysis was performed using SQL with a focus on solving real business problems:

- Revenue aggregation and trend analysis
- Customer segmentation and retention analysis
- Product performance and revenue concentration
- Customer ranking and revenue distribution
- Identification of low-performing categories

Advanced SQL techniques used:
- CTEs (Common Table Expressions)
- Window functions (ROW_NUMBER, RANK, NTILE)
- Aggregations (SUM, AVG, COUNT)
- Multi-table joins

Key analyses include:
- Monthly revenue trends
- Revenue share by product category
- Customer ranking by revenue
- Top 10% vs bottom 90% revenue contribution
- Customer retention (new vs returning customers)
- Identification of low-performing product categories

---

## Key Insights

1. Revenue is growing rapidly, exceeding 1M in peak months, indicating strong acquisition performance.

2. Customer retention is critically low (~3%), meaning the business relies almost entirely on new customers.

3. This creates a significant long-term risk, as revenue growth is not sustainable without improving retention.

4. Revenue is highly concentrated in a small number of product categories, increasing dependency risk.

5. A small percentage of customers generates a disproportionately large share of total revenue.

---

## Risks Identified

- Extremely low customer retention (~3%) threatens long-term revenue stability  
- High dependency on new customer acquisition increases marketing cost pressure  
- Revenue concentration in a few categories creates vulnerability to demand shifts  
- Overreliance on a small group of customers increases financial risk  

---

## Business Impact

This analysis highlights structural weaknesses in customer retention and revenue distribution, enabling the business to:

- Identify key revenue drivers  
- Detect high-risk areas in customer and product strategy  
- Support data-driven decision-making for long-term growth  

---

## Business Recommendations

- Prioritize retention strategy: increasing repeat rate from 3% to even 10% would significantly stabilize revenue  

- Shift focus from acquisition to retention through loyalty programs and targeted re-engagement campaigns  

- Diversify product portfolio to reduce dependency on top-performing categories  

- Implement customer segmentation to identify and retain high-value customers  

- Expand presence in underperforming regions while maintaining strong markets like São Paulo  

---

## Project Structure

- sql/
  - 01_kpi_overview.sql
  - 02_sales_trends.sql
  - 03_product_analysis.sql
  - 04_customer_analysis.sql
  - 05_category_share.sql
  - 06_customer_ranking.sql
  - 07_customer_concentration.sql
  - 08_low_performing_categories.sql
 
  ---

    ## Power BI Dashboard

This project also includes a Power BI dashboard analyzing revenue, orders, and seller performance.

Key features:
- KPI tracking (Revenue, Orders, AOV)
- Revenue trend analysis
- Top products and sellers
- Interactive date filtering

See attached dashboard file and PDF for visualization.
