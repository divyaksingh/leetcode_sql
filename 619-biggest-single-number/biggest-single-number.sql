# Write your MySQL query statement below
#select max(num) from MyNumbers group by num having count(num) < 2
select max(num) as num from MyNumbers where num in (select num from MyNumbers group by num having count(num) < 2)