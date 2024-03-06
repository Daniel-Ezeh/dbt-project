
with customers as (
    select * from {{ ref("stg_properties") }}
),

orders as (
    select * from {{ ref("stg_car_sales") }}
),


customer_orders as (

    select
        vehicle_id,

        min(sellingprice) as first_order_date,
        max(sellingprice) as most_recent_order_date,
        count(vehicle_id) as number_of_orders

    from orders

    group by 1

),

final as (

    select 
        *
        -- customers.Serial_Number,
        -- customers.Address,
        -- customers.last_name,
        -- customer_orders.first_order_date,
        -- customer_orders.most_recent_order_date,
        -- coalesce(customer_orders.number_of_orders, 0) as number_of_orders

    from customers

    -- left join customer_orders using (customer_id)

)

select * from final