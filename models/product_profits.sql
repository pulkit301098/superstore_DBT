{% set metric = 'profit' %}
{% set threshold = var('check_limit', 1000) %}
{% set year = var('year', 2020) %}

{{ log("Check Limit: " ~ threshold, info=True) }}

select product_id,
product_name,
sum(profit) as total_profit_per_product,
case when sum(profit)>'{{ threshold }}' then 'High'
else 'Low' END
as profit_metric
from dbt_db.superstore
group by product_id, product_name