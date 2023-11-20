SELECT member_id, member_name, gender, date_format(date_of_birth, "%Y-%m-%d")
from member_profile 
where month(date_of_birth) = 3 and gender like "W" and not TLNO is null 
order by 1;
