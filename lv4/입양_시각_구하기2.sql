WITH RECURSIVE cte AS (
    SELECT 0 AS n
    UNION ALL
    SELECT n+1
    FROM cte
    WHERE n < 23
)

SELECT cte.n, IFNULL(a.count, 0)
FROM cte
LEFT JOIN (SELECT HOUR(datetime) hours, COUNT(*) `count`
           FROM animal_outs
           GROUP BY hours
           ORDER BY hours) a
ON cte.n = a.hours;
