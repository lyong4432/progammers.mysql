SELECT date_format(sales_date,"%Y-%m-%d") as sales_date, product_id, user_id, sales_amount
from ONLINE_SALE 
where sales_date between '2022-03-01' and '2022-03-31' 
union all 
SELECT date_format(sales_date,"%Y-%m-%d") as sales_date, product_id, null user_id, sales_amount
from OFFLINE_SALE 
where sales_date between '2022-03-01' and '2022-03-31'
order by sales_date, product_id, user_id;
