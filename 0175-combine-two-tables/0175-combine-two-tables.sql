/* Write your T-SQL query statement below */
select firstname,lastname,city,state
from Person P
Left Join
Address A
on A.personId = P.personId