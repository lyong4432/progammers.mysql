SELECT year(n.sales_date) year, month(n.sales_date) month, u.gender gender, count(distinct n.user_id) users
from user_info u
    join online_sale n
    on u.user_id = n.user_id
where not gender is null
group by year(n.sales_date), month(n.sales_date), u.gender
order by year(n.sales_date), month(n.sales_date), u.gender;
