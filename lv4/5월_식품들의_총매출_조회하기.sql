SELECT o.product_id, p.product_name, sum(o.amount)*p.price total_sales
from food_product p 
join food_order o 
on p.product_id = o.product_id 
where year(o.produce_date) = 2022 and month(o.produce_date) = 5
group by o.product_id 
order by 3 desc, 1;
