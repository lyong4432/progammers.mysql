SELECT product_id, product_name, product_cd, category, price
from food_product
where price like (select max(price) from food_product);
