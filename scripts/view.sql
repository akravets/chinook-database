/*
 Creates view which is a virtual table. I virtual table records cannot be
 deleted, updated or added
*/
DROP VIEW Customer_view;

CREATE VIEW Customer_view	 AS
SELECT FirstName, LastName FROM	Customer where FirstName like 'A%';
