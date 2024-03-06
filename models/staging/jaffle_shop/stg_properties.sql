with property as (
    select
        Serial_Number as Serial_id,
        Address,
        Town,
        Sale_Amount

    from {{source("jaffle_shop", "Real_estate_sales")}}
)

select * from property