select product_id,
product_name, 
sum(sales) as total_sales, 
sum(quantity) as total_qty,
sum(profit) as total_profit
from
dbt_db.superstore group by product_id, product_name
order by total_profit desc 
limit 15
