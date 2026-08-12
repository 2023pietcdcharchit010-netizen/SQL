# Write your MySQL query statement below
select query_name,
Round(AVG(rating/position),2) as quality,
Round(AVG(IF (rating <3 ,1,0) *100 ),2) as poor_query_percentage
from Queries
group by query_name