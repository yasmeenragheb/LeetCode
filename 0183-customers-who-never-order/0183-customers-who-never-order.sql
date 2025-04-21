# Write your MySQL query statement below
select name as Customers
from customers c
left outer join
orders o 
on c.id = o.customerid
where o.id is null