SELECT board_id, writer_id, title, price, if(status like "sale", "판매중", if(status like "reserved","예약중","거래완료")) `STATUS`
from used_goods_board
where created_date like '2022-10-05'
order by board_id desc;
