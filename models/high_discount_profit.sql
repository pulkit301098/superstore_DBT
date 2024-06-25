with high_discount_profit as(
select category, sub_category, avg(profit) as Profits
from dbt_db.superstore
where discount>=(select max(discount) from dbt_db.superstore) 
group by category, sub_category
HAVING avg(profit) > 0
)

select category, sub_category, Profits
from high_discount_profit