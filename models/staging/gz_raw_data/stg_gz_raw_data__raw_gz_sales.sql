with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_sales') }}

),

renamed as (

    select
        date_date as date,
        orders_id,
        pdt_id,
        revenue,
        quantity

    from source

)

select * from renamed
