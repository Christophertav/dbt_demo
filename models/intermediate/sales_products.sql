SELECT 
    sales.date
    , products.products_id
    ,orders_id
    ,pdt_id
    ,revenue
    ,quantity
FROM {{ref("stg_gz_raw_data__raw_gz_sales")}} AS sales
JOIN {{ref("stg_gz_raw_data__raw_gz_product")}} AS products
    ON sales.pdt_id = products.products_id