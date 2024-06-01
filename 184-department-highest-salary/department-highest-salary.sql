# Write your MySQL query statement below
with cte as(select *, dense_rank() over(partition by departmentId order by salary desc) as r from Employee)

select d.name as Department, cte.name as Employee, cte.salary as Salary from Department d inner join cte on d.id = cte.departmentId where r =1