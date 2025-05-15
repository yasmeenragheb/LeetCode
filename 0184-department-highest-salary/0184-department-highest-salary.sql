WITH RankedSalaries AS (
  SELECT 
    D.name AS Department,
    E.name AS Employee,
    E.salary as Salary,
    RANK() OVER (PARTITION BY D.id ORDER BY E.salary DESC) AS rk
  FROM Employee E
  JOIN Department D ON E.departmentId = D.id
)
SELECT Department, Employee, Salary
FROM RankedSalaries
WHERE rk = 1;

