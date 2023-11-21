select a.flavor
from (SELECT *
from first_half 
union all 
select * 
from july ) a
group by a.flavor 
order by sum(a.total_order) desc
limit 3;
