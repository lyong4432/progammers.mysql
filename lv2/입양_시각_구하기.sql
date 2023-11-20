SELECT HOUR(DATETIME) hour, count(*) `count`
from animal_outs 
where HOUR(DATETIME) BETWEEN '09' AND '19'
group by HOUR(DATETIME)
order by 1;
