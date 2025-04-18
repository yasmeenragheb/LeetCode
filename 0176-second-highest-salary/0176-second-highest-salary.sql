WITH DistinctSalaries AS (
    SELECT DISTINCT Salary
    FROM Employee
),
RankedSalaries AS (
    SELECT Salary,
           ROW_NUMBER() OVER (ORDER BY Salary DESC) AS SalaryRank
    FROM DistinctSalaries
)
SELECT NULLIF(
    (SELECT Salary 
     FROM RankedSalaries 
     WHERE SalaryRank = 2), 
    NULL
) AS SecondHighestSalary;