/* Write your T-SQL query statement below */
with CTE as (
    select * ,dense_rank()over(partition by email order by id) [DR] from Person
)
delete from CTE where DR >1