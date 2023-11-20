SELECT name, count(name) `count`
from animal_ins 
where not name is null 
group by name
having count(name) > 1
order by name;
