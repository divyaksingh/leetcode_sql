# Write your MySQL query statement below
-- select o.buyer_id, u.join_date, count(o.buyer_id) as orders_in_2019 from Orders o right join Users u on o.buyer_id=u.user_id and year(order_date)="2019" group by o.buyer_id #having order_date  between "01.01.2019" and "31.12.2019" 

SELECT u.user_id as buyer_id, u.join_date, count(o.order_id) as 'orders_in_2019'
FROM users u
LEFT JOIN Orders o
ON o.buyer_id=u.user_id AND YEAR(order_date)='2019'
GROUP BY u.user_id