 SELECT m.member_name, r.review_text, date_format(r.review_date,"%Y-%m-%d") review_date
 from member_profile m
     join rest_review r
     on m.member_id = r.member_id
 where r.member_id = (select member_id
    from rest_review 
    group by member_id
    order by count(*) desc
                     limit 1)

order by 3,2;
