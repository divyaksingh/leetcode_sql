# Write your MySQL query statement below
with cte as (select customer_number, count(customer_number)  as total from Orders group by customer_number order by total desc) 

select customer_number from cte limit 1