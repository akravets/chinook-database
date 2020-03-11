/*
 Self joins are used when we want to join data from the same table.
 Employee table is used to store data about employees, as well as their supervisors. 
 Column 'ReportsTo' sets Supervisor for a given Employee but setting it to EmployeeId. 
 In this query we join table to itself by linking employeeId to ReportsTo.
*/
SELECT 
  a.EmployeeId as SupervisorId /* alias EmployeeId to SupervisorId */
  a.FirstName as Supervisor, /* alias FirstName to Supervisor */
  b.EmployeeId as EmployeeId, /* alias EmployeeId to EmployeeId */
  b.FirstName as Employee /* alias FirstName to Employee */
  
  FROM 
    Employee a, Employee b
  WHERE 
    a.EmployeeId=b.ReportsTo /* join two columns */
  ORDER BY 
    SupervisorId
