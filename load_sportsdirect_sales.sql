COPY INTO sportsdirect_sales.sportsdirect_gold.fact_order
FROM (
  SELECT
    CAST(date AS DATE) AS date,
    product_code,
    customer_code,
    CAST(sold_quantity AS BIGINT) AS sold_quantity
  FROM
    '/Volumes/sportsdirect_sales/sportsdirect_gold/sales/fact_orders.csv'
)
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true');