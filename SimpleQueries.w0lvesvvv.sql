-- Create a query to list out the event name and event data from the tblEvent table, with the most recent first.
SELECT EventName
	, EventDate 
FROM dbo.tblEvent
ORDER BY EventDate DESC

-- Create a query to list out the id number and name of the last 3 categories from the tblCategory table in alphabetical order,
SELECT TOP 3 CategoryID, CategoryName
FROM dbo.tblCategory
ORDER BY CategoryName ASC

---- Write a query to show the first 5 events (in date order) from the tblEvent table. You should give the columns aliases (What and Details in this case); 
---- Even though you're sorting by the event date, it shouldn't be included in your results.
SELECT TOP 5 EventName What
	 , EventDetails Details
FROM dbo.tblEvent
ORDER BY EventDate ASC

-- Create a query which uses two separate SELECT statements to show the first and last 2 events in date order from the tblEvent table. 
-- Redirect the output of this query to text, rather than to grid.
SELECT TOP 2 EventName
	 , EventDetails 
	 , EventDate
FROM dbo.tblEvent
ORDER BY EventDate ASC

SELECT TOP 2 EventName
	 , EventDetails 
	 , EventDate
FROM dbo.tblEvent
ORDER BY EventDate DESC