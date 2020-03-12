/*
  Selects columns from both tables and puts them in one single column.
  Rules for UNION:
    * Select statements must have the same number of columns
    * Columns must be of the same type
    * Columns must have the same order
    
  UNION produces distinct results
*/
SELECT City FROM Employee
UNION
SELECT City FROM Customer
ORDER BY City

/*
  UNION ALL returns all results
*/
SELECT City FROM Employee
UNION ALL
SELECT City FROM Customer
ORDER BY City
