# Write your MySQL query statement below
Update Salary set sex =(case sex when "f" then "m"
                        else  "f" end)