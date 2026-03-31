## Business Problem

The company experiences fluctuating revenue and lacks clear visibility into customer behavior, product performance, and retention.

The goal of this analysis is to identify key revenue drivers, evaluate customer value, and uncover opportunities for growth and retention improvement.

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
- Customer retention (new vs returning)
- Low-performing product categories

---

## Key Insights

- Monthly revenue shows strong growth, reaching peaks above 1M, indicating rapid business expansion.

- However, the business is heavily dependent on new customers:  
  repeat customer rate is only ~3%, which is critically low.

- This suggests that the company is spending resources on acquisition but failing to retain customers, creating long-term revenue risk.

- Revenue is highly concentrated in a few categories, with beauty, watches, and home products dominating sales, increasing dependency risk.

- Customer spending is unevenly distributed, where a small group of customers contributes significantly higher revenue.

- Revenue is geographically concentrated, with São Paulo (SP) generating the largest share, indicating regional dependency.
- The top 10% of customers generate a significantly larger share of total revenue compared to the remaining customer base
- Revenue concentration analysis shows dependency on a small number of categories and customers
  
---

## Business Recommendations

- Improve customer retention through loyalty programs and personalized marketing.
- Reduce dependency on top categories by diversifying product offerings.
- Investigate reasons for low repeat purchase rate and optimize customer experience.
- Focus marketing efforts on high-performing regions while expanding underperforming ones.
- Identify and target high-value customers with tailored campaigns.
- Increase retention rate even by 5–10% to significantly improve long-term revenue stability

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
