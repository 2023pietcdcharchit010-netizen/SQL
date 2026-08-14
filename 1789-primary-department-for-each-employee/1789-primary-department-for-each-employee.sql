# Write your MySQL query statement below
select employee_id,department_id from Employee
where Primary_flag='Y'
group by employee_id
union 
select employee_id,department_id from Employee
group by employee_id
having Count(employee_id)=1