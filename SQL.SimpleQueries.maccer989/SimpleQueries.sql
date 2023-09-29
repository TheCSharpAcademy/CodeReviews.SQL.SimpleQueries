--SQL Simple Quieries
--Create a query to list out the event name and event data from the tblEvent table, with the most recent first.
select EventName, EventDate
from dbo.tblEvent
order by EventDate asc

--Create a query to list out the id number and name of the last 3 categories from the tblCategory table in alphabetical order
select *
from (select top (3)*  from dbo.tblCategory order by CategoryID desc) c
order by CategoryName asc

--Create a query to show the first 5 events (in date order) from the tblEvent table. You should give the columns aliases (What and Details in this case);
select c.EventName as 'What', c.EventDetails as 'Details'
from (select top (5)*  from dbo.tblEvent order by EventDate asc) c

--Create a query which uses two separate SELECT statements to show the first and last 2 events in date order from the tblEvent table. 
--Redirect the output of this query to text, rather than to grid.
select *
from (select top (2)*  from dbo.tblEvent order by EventID asc) c
order by EventDate asc
select *
from (select top (2)*  from dbo.tblEvent order by EventID desc) c
order by EventDate asc
