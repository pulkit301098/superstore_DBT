{% set start_date = var('start_date', '2020-11-01') %}
{% set end_date = var('end_date', '2020-11-30') %}

{{ log("Start Date: " ~ start_date, info=True) }}
{{ log("End Date: " ~ end_date, info=True) }}

{% if not start_date or not end_date %}
    {% do exceptions.raise_compiler_error("Variables 'start_date' and 'end_date' have to defined.") %}
{% endif %}


select order_date, sub_category,
sum(profit) as profit,
sum(sales) as sales, 
avg(profit/sales)*100 as profit_margin
from dbt_db.superstore
where order_date 
between '{{ start_date }}' and '{{ end_date }}'
group by order_date, sub_category
order by order_date
