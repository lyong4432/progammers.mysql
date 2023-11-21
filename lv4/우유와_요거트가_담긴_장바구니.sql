select cart_id
from cart_products 
where cart_id in (select cart_id 
                   from cart_products 
                    where name like "milk"
                   )
    and cart_id in (select cart_id 
                   from cart_products
                    where name like "yogurt"
                   )
group by cart_id                
order by 1;
