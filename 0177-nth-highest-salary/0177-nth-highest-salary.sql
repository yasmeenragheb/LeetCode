CREATE FUNCTION getNthHighestSalary(@N INT) 
RETURNS INT 
AS
BEGIN
    DECLARE @result INT;

    SELECT @result = salary
    FROM (
        SELECT DISTINCT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rank
        FROM Employee
    ) AS DistinctRanks
    WHERE rank = @N;

    RETURN @result;  -- Will return NULL if no such rank exists
END
