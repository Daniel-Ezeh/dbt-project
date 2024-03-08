
select {{ dbt_utils.generate_surrogate_key(['Serial_id', 'Address']) }} as id,
    Address,
    Sale_Amount
 from {{ ref("stg_properties") }}


{#-- {{
-- dbt_utils.date_spine(
-- datepart="day",
-- start_date="cast('2019-01-01' as date)",
-- end_date="cast('2020-01-01' as date)",
-- )
-- }}
#}
