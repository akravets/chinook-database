/*
  Selects names of tracks that have unit price of more than 2 in InvoiceLine table
*/
SELECT Name FROM Track
	WHERE EXISTS(
		SELECT NULL FROM InvoiceLine -- Using NULL to signify that we just want to get boolean, no the results
		WHERE Track.TrackId = InvoiceLine.TrackId 
		AND InvoiceLine.UnitPrice > 2);
