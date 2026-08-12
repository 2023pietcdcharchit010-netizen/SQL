# Write your MySQL query statement below
select DATE_FORMAT(trans_date,'%Y-%m') as month,
country,
Count(id) as trans_count ,
Sum(IF(state='approved',1,0)) approved_count ,
Sum(Amount) as trans_total_amount, 
Sum(IF(state='approved',amount,0)) as approved_total_amount 
from Transactions
group by month,country