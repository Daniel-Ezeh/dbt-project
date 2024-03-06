with car_sales as (

    select
        vin as vehicle_id,
        transmission,
        color,
        sellingprice

    from {{ source("jaffle_shop", "car_sales") }}
)

select * from car_sales
