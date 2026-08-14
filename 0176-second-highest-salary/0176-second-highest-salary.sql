/* Write your T-SQL query statement below */
With CTE as (
    Select *,Dense_rank() over (order by Salary desc) as [DR] from Employee
)
select max(salary) as SecondHighestSalary
from CTE Where DR=2


-- MAX() here is useful because it returns NULL when no row has DR = 2.