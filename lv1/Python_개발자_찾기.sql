select ID, EMAIL, FIRST_NAME, LAST_NAME
from developer_infos
where skill_1 = 'python' or skill_2 = 'python' or skill_3 = 'python'
order by ID
