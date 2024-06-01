# Write your MySQL query statement below
with cte as(select name, salary, departmentID, dense_rank() over(partition by departmentId order by salary desc) as r from Employee)

select d.name as Department, cte.name as Employee, cte.salary as Salary from cte inner join Department d on d.id=cte.departmentID where r <=3