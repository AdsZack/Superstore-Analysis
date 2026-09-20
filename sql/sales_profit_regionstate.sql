-- Overall view Region and State, plus profit margin
select 
	"Region", 
	"State",
	SUM("Sales") as sales,
	SUM("Profit") as profit,
	SUM("Profit") / nullif(sum("Sales"), 0) as profit_margin
from superstore
group by 
	"Region", 
	"State"
order by "Region", sales desc;

-- To see Region and State that has high sales but minus profit
--select 
--	"Region",
--	"State",
--	SUM("Sales") as sales,
--	SUM("Profit") as profit
--from superstore
--group by "Region", "State" 
--having SUM("Profit") < 0
--order by sales desc;