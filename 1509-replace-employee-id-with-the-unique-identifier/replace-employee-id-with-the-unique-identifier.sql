# Write your MySQL query statement below
#Attempt2
select e1.unique_id, e2.name from EmployeeUNI e1 right join Employees e2 on e1.id=e2.id


#Attempt1
-- select EmployeeUNI.unique_id, Employees.name from Employees left outer join EmployeeUNI on Employees.id = EmployeeUNI.id