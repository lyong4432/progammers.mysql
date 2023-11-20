SELECT pt_name, pt_no, gend_cd, age, ifnull(tlno,'NONE') tlno
from patient 
where age <= 12 and gend_cd like 'W' 
order by age desc, pt_name;
