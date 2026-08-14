# Write your MySQL query statement below
select sell_date,
count(distinct product) as num_sold,
group_concat(
    Distinct product
    Order by product
    Separator ',' 
) as Products
from Activities
Group by sell_date
Order by sell_date , product