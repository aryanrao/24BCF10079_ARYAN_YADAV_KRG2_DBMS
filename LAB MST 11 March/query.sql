SELECT D.DeptName, COUNT(E.EmpID) AS TotalEmployees
FROM Department D
LEFT JOIN Employee E
ON D.DeptID = E.DeptID
GROUP BY D.DeptName;
