SELECT food_type, rest_id, rest_name, favorites 
from rest_info 
WHERE (FOOD_TYPE, FAVORITES) IN (SELECT FOOD_TYPE, MAX(FAVORITES)
    FROM REST_INFO
    GROUP BY FOOD_TYPE
    )
order by food_type desc;
