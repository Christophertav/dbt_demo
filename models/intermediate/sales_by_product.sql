SELECT
    products_id
    ,SUM(quantity) AS quantity
    ,SUM(revenue) AS revenue
    ,SAFE_DIVIDE(SUM(revenue), SUM(quantity)) as revenue_qty
FROM {{ref("sales_products")}} AS sales_products
GROUP BY products_id
ORDER BY revenue_qty DESC