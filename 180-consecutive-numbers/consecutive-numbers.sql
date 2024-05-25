# Write your MySQL query statement below
with cte as(
select id, num,lead(num,1) over (order by id) as next1, lead(num,2) over (order by id) as next2, lead(id,1) over (order by id) as id1, lead(id,2) over (order by id) as id2 from Logs)

select distinct num as ConsecutiveNums from cte where (num = next1 and num = next2) and (id1 = id + 1 and id2 = id + 2)