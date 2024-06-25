
select category, sub_category,
case when date_part('month',order_date) = 1 then 'Jan'
when date_part('month',order_date) =2 then 'Feb'
when date_part('month',order_date) = 3 then 'Mar' 
when date_part('month',order_date) = 4 then 'Apr'
when date_part('month',order_date) = 5 then 'May'
when date_part('month',order_date) = 6 then 'Jun'
when date_part('month',order_date) = 7 then 'Jul'
when date_part('month',order_date)=8 then 'Aug'
when date_part('month',order_date)=9 then 'Sep'
when date_part('month',order_date)=10 then 'Oct'
when date_part('month',order_date)=11 then 'Nov'
when date_part('month',order_date)=12 then 'Dec'
else 'Unknown'
end as month_name,
sum(profit) as total_profits,
sum(sales) as total_sales,
floor(avg((profit/sales))*100) as avg_profit_margin
from dbt_db.superstore group by 
category,sub_category,date_part('month',order_date) 
order by date_part('month',order_date)