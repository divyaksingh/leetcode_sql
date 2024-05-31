# Write your MySQL query statement below
-- with cte as(select *, date_add(event_date, interval 1 day) as next_date from Activity), 

-- cte2 as(select count(player_id) as players from cte where next_date in (select min(event_date) from Activity group by (player_id))),

-- cte3 as (select count(distinct player_id) as total from cte)

-- select round((cte2.players/cte3.total),2) as fraction from cte2, cte3

with cte as(select player_id, min(event_date) as mini_date from Activity group by player_id),

cte2 as(select *, date_add(mini_date, interval 1 day) as next_date from cte)

select round((select count(distinct player_id) from Activity where (player_id, event_date) in (select player_id, next_date from cte2))/(select count(distinct player_id) from Activity),2) as fraction