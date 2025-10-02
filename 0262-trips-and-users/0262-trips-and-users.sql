SELECT 
    request_at AS Day,
    Round (SUM(CASE WHEN status LIKE 'cancelled%' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) ,2) as 'Cancellation Rate'
FROM Trips t
join Users U
on U.users_id = t.client_id
JOIN Users d 
ON t.driver_Id = d.users_Id
where U.banned = 'No'
AND d.Banned = 'No'
AND request_at between '2013-10-01' and '2013-10-03'
GROUP BY request_at
ORDER BY request_at;

