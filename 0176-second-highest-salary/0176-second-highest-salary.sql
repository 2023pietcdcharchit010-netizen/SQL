# Write your MySQL query statement below
WITH CTE AS (
    SELECT salary,DENSE_RANK() OVER (ORDER BY salary DESC) AS DR
    FROM Employee
)
SELECT MAX(salary) AS SecondHighestSalary FROM CTE
WHERE DR = 2;