{% set min_profit = 0 %}

with profits_per_state as (
select state, avg(profit) as Profits, avg(discount) as Discount,
case 
when avg(profit) > 0 then 'Healthy'
when avg(profit) = 0 then 'Breaking Even'
else 'Not Profitable' END
as profit_health
from dbt_db.superstore
group by state)

select state, profit_health, Discount from profits_per_state


