/* Write your T-SQL query statement below */
select email as Email
from (select  email, count(*) as records
from person
group by email) a
where records>1