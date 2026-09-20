-- Overall Category and Sub-Category, plus profit margin
select 
	"Category",
	"Sub-Category",
	SUM("Sales") as sales,
	SUM("Profit") as profit,
	SUM("Profit") / nullif(SUM("Sales"), 0) as profit_margin 
from superstore
group by "Category", "Sub-Category" 
order by sales desc;

-- To see Category and Sub-Category that has highs sales but minus profit
--select 
--	"Category",
--	"Sub-Category",
--	SUM("Sales") as sales,
--	SUM("Profit") as profit
--from superstore
--group by "Category", "Sub-Category" 
--having sum("Profit") < 0
--order by sales desc;
