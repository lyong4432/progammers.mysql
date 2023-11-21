SELECT car_id, 
CASE WHEN SUM(CASE WHEN '2022-10-16' BETWEEN START_DATE AND END_DATE 
                          THEN 1 ELSE 0 END) = 1 THEN '대여중' ELSE '대여 가능' END
                          availability

from car_rental_company_rental_history 
group by car_id
order by 1 desc;
