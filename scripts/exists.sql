/*
  Selects names of tracks that have unit price of more than 2 in InvoiceLine table
*/
SELECT Name FROM Track
	WHERE EXISTS(
		SELECT InvoiceId FROM InvoiceLine
		WHERE
			Track.TrackId = InvoiceLine.TrackId
		AND
			InvoiceLine.UnitPrice > 2);
