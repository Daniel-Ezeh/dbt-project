{%- set array = [1, 2, 3, 4, 5, 6, 7] -%}
{%- set color = ["pink", "green", "red"] -%}

{# 

{%- for x in array -%}
 this is line {{ x }} 
{% endfor %}



{%- for x in color -%}
    {%- if x == 'green' -%}
        I love {{ x }} balls.
    {%- else -%}
        I hate {{ x }} hats.
    {%- endif -%}
{%- endfor -%}



{%- set my_dict = {
    "name":"Daniel",
    "Reg": 12334,
    'address': "Prime Water Garden II, Ikate, Lekki, Lagos."
} -%}

{%- for key, value in my_dict.items() -%}
    {{ key }}: {{ value }}
{% endfor %}

#}

{%- set colors = ['gray','beige', 'black', 'blue'] -%}

with
    cars as (select * from {{ ref("stg_car_sales") }})

    SELECT
        transmission,
        {%- for color in colors%}
            COUNT(CASE WHEN color = '{{ color }}' THEN sellingprice ELSE 0 END) AS {{ color.capitalize() }}
            {%- if not loop.last -%}
            ,
            {%- endif %}
        {%- endfor %}
FROM
    cars
GROUP BY
    1
    
