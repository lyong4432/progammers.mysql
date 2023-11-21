SELECT b.author_id, a.author_name, b.category, sum(b.price*s.sales) total_sales
from book b 
    join author a 
    on b.author_id = a.author_id 
    join book_sales s
    on s.book_id = b.book_id
where year(s.sales_date) =2022 and month(s.sales_date)=1 
group by b.author_id, b.category
order by 1,3 desc;
