/* Write your T-SQL query statement below */
select E1.name as Employee
from employee E1
inner join employee E2
on E1.managerId = E2.id
where E1.Salary>E2.salary