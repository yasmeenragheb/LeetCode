/* Write your T-SQL query statement below */
select tweet_id
from Tweets t
where len(t.content)>15