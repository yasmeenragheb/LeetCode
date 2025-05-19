WITH FirstLogin AS (
    SELECT 
        player_id,
        MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
),
NextDayLogin AS (
    SELECT 
        f.player_id
    FROM FirstLogin f
    JOIN Activity a 
        ON f.player_id = a.player_id 
        AND a.event_date = DATEADD(DAY, 1, f.first_login)
)

SELECT 
    ROUND(
        CAST(COUNT(DISTINCT n.player_id) AS FLOAT) / 
        (SELECT COUNT(DISTINCT player_id) FROM Activity), 
        2
    ) AS fraction
FROM NextDayLogin n;

