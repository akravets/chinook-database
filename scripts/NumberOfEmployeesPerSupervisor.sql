/*
  Groups supervisors by their number of employees
*/
SELECT 
  a.EmployeeId as SupervisorId, 
  a.FirstName as SupervisorName, 
  count(b.EmployeeId) as number_of_employees

  FROM 
    Employee a, Employee b
  WHERE 
    a.EmployeeId=b.ReportsTo
  GROUP BY 
    SupervisorName
  ORDER BY SupervisorId
