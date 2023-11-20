SELECT name
from animal_ins 
where datetime like (select min(datetime) from animal_ins);
