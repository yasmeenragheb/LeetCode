/* Write your T-SQL query statement below */
select email
from person
group by email
having count(*)>1