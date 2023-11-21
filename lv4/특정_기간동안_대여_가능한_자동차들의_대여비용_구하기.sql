SELECT c.car_id, c.car_type, round((c.daily_fee*(1-(p.discount_rate/100)))*30,0) fee
from CAR_RENTAL_COMPANY_CAR c
    join CAR_RENTAL_COMPANY_DISCOUNT_PLAN p
    on c.car_type = p.car_type

where c.car_type in ('세단', 'SUV') and 
    c.car_id not in (select car_id 
              from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
              where END_DATE >= '2022-11-01' AND START_DATE < '2022-12-01'
              )
    and p.duration_type like '30일 이상'
    and (c.daily_fee*(1-(p.discount_rate/100)))*30 >= 500000 
    and (c.daily_fee*(1-(p.discount_rate/100)))*30 < 2000000
order by 3 desc ,2, 1 desc;
