SELECT datetime `시간`
from animal_ins
where datetime like (select min(datetime) from animal_ins);
