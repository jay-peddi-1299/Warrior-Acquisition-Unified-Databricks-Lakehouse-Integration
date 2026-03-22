USE CATALOG sportsdirect_sales;

USE SCHEMA sportsdirect_gold;

-- Create view
CREATE OR REPLACE VIEW vw_order_info AS (
  SELECT
    f.date AS Order_Date,
    f.product_code AS Product_Code,
    f.customer_code AS Customer_Code,
    d.date_key AS Date_Key,
    d.year AS Year,
    d.month AS Month,
    d.month_short_name AS Month_Short_Name,
    d.quarter AS Quarter,
    d.year_quarter AS Year_Quarter,
    c.customer AS Customer_Name,
    c.market AS Customer_Market,
    c.platform AS Customer_Platform,
    c.channel AS Customer_Channel,
    p.division AS Product_Division,
    p.category AS Product_Category,
    p.product AS Product_Name,
    p.variant AS Product_Variant,
    f.sold_quantity AS Ordered_Quantity,
    pr.price_inr AS Product_Price,
    (f.sold_quantity * pr.price_inr) AS Total_Amount
  FROM
    fact_order AS f
  LEFT JOIN
    dim_date AS d
    ON f.date = d.date
  LEFT JOIN
    dim_customer AS c
    ON f.customer_code = c.customer_code
  LEFT JOIN
    dim_product AS p
    ON f.product_code = p.product_code
  LEFT JOIN
    dim_price AS pr
    ON f.product_code = pr.product_code
    AND YEAR(f.date) = pr.year
);

-- Preview the view
SELECT *
FROM vw_order_info
LIMIT 10;