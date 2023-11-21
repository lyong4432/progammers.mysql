SELECT u.user_id, u.nickname, 
concat(u.city,' ',u.street_address1,' ',u.street_address2) 전체주소, 
concat(left(tlno,3),"-",substring(tlno,4,4),'-',substring(tlno,8,4)) 전화번호
from used_goods_board b
join used_goods_user u 
on b.writer_id = u.user_id
group by b.writer_id
having count(*) >= 3
order by 1 desc;
