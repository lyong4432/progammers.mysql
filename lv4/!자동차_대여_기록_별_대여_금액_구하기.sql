-- 너무 어려웠음.. 
SELECT h.history_id, 
   round(c.daily_fee*(1-(ifnull(p.discount_rate,0)/100))*(datediff(h.end_date,h.start_date)+1),0) fee
from CAR_RENTAL_COMPANY_CAR c
    join CAR_RENTAL_COMPANY_RENTAL_HISTORY h
    on c.car_id = h.car_id 
   left join CAR_RENTAL_COMPANY_DISCOUNT_PLAN p 
    on c.car_type = p.car_type 
    and p.duration_type = (
    CASE
     when datediff(h.end_date,h.start_date)+1 >= 90 then "90일 이상"
     when datediff(h.end_date,h.start_date)+1 >= 30 then "30일 이상"
     when  datediff(h.end_date,h.start_date)+1 >= 7 then "7일 이상" 
    END)
    
where c.car_type like '트럭' 


order by  2 desc, 1 desc;
