# Write your MySQL query statement below
with cte as(select *, date_add(recordDate, interval-1 day) as YestDay, lag(recordDate) over (order by recordDate) as PrevDay, lag(temperature) over (order by recordDate) as PrevTemp from Weather)


select id from cte where YestDay=PrevDay and temperature>PrevTemp


-- select w1.id from Weather as w1, Weather as w2 where datediff(w1.recordDate, w2.recordDate) = 1 and w1.temperature > w2.temperature