# Write your MySQL query statement below
-- select employee_id, salary = case
-- when(mod(employee_id, 2) != 0 and regexp_like(name, "M")) then "0"
-- when mod(employee_id, 2) != 0 and regexp_like(name, "M") then "0"
-- else salary end as bonus from Employees

-- select employee_id, "0" as bonus from Employees where mod(employee_id, 2) != 0 and regexp_like(name, "M")

-- select employee_id, "0" as bonus from Employees where mod(employee_id, 2) = 0

-- select employee_id, salary as bonus from Employees

 select employee_id , 
   case when employee_id%2 <>0 and name not like 'M%' then salary 
   else 0
   end 
   as bonus
   from employees
   order by employee_id;