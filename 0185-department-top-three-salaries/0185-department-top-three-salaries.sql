/* Write your T-SQL query statement below */
select Department, Employee, Salary
from(
select D.name as Department, E.name as Employee, salary as Salary,
dense_rank() over (partition by D.name order by salary desc) as rnk
from Employee E 
inner Join Department D
on D.id = E.departmentId) as ranked
where rnk in (1,2,3)