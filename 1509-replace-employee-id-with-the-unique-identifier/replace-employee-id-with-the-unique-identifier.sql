# Write your MySQL query statement below
#select unique_id, name from EmployeeUNI inner join Employees on EmployeeUNI.id = Employees.id

select EmployeeUNI.unique_id, Employees.name from Employees left outer join EmployeeUNI on Employees.id = EmployeeUNI.id