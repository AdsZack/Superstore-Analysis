-- Sales and Profit from 2014-2017 aggregate by day
select 
	date("Order Date") as order_day,
	sum("Sales") as sales,
	sum("Profit") as profit,
	SUM("Quantity") as quantity,
	sum("Profit") / nullif(sum("Sales"), 0) as profit_margin
from superstore
group by date("Order Date")
order by order_day;