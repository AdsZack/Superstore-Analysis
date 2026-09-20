-- total order and customer monthly
select 
	date_trunc('month', "Order Date") :: date as date_by_month,
	count(distinct "Customer ID" ) as total_customer,
	count(distinct "Order ID" ) as total_order
from superstore
group by date_trunc('month', "Order Date")
order by date_by_month;