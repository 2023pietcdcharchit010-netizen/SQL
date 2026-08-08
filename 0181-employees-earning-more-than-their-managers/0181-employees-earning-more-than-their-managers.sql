# Write your MySQL query statement below
select E.name as 'Employee' from Employee E join Employee M
on E.ManagerId = M.Id and
E.Salary>M.Salary;