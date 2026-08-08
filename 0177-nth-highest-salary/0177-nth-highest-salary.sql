CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    # Write your MySQL query statement below.
    With CTE as (
        select Salary ,Dense_rank()over(order by salary desc) as DR from Employee
    )
    select max(salary) from CTE Where DR=N
    );
END