# Write your MySQL query statement below
with cte as(select pid,tiv_2015,tiv_2016, concat(lat, ",",lon)as location from Insurance group by location having count(pid) > 1),

cte2 as (select i1.pid,i1.tiv_2015, i1.tiv_2016, concat(i1.lat,",",i1.lon) as location from Insurance i1 inner join Insurance i2 on i1.tiv_2015 = i2.tiv_2015 where i1.pid != i2.pid and concat(i1.lat,",",i1.lon) not in (select location from cte) group by i1.pid)

select round(sum(tiv_2016),2) as tiv_2016 from cte2