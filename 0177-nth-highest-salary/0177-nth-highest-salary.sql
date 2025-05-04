CREATE FUNCTION getNthHighestSalary(@N INT) 
RETURNS INT 
AS
BEGIN
return(

    SELECT salary
    FROM (
        SELECT DISTINCT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rank
        FROM Employee
    ) AS DistinctRanks
    WHERE rank = @N);
END
