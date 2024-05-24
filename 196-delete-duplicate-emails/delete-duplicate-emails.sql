# Write your MySQL query statement below
-- with cte as (select id, email , row_number() over (partition by email order by id) as rn from Person)
-- delete from Person where id in (select id from cte where rn > 1)

delete p2 from Person p1 inner join Person p2 on p1.email = p2.email where p1.id < p2.id