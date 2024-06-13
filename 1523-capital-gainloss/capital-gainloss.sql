# Write your MySQL query statement below
with cte1 as(select stock_name, sum(price) as p1 from Stocks where operation = "sell" group by stock_name),

cte2 as(select stock_name, sum(price) as p2 from Stocks where operation = "buy" group by stock_name)

select cte2.stock_name, (cte1.p1-cte2.p2) as capital_gain_loss from cte1 join cte2 on cte1.stock_name=cte2.stock_name