SELECT left(product_code,2) category, count(*) products
from product
group by category
order by 1;
