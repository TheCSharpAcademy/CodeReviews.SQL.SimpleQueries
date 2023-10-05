--list out the event name and event data from tblEvent table
--the most recent first

select EventName,EventDetails,EventDate,CountryID,CategoryID from dbo.tblEvent
order by EventDate desc

--list out the id number and name of the last 3 categories from tblCategory table
--in alphabetical order

WITH Ordered AS (
select 
    TOP 3 * FROM tblCategory order by CategoryName Desc)
SELECT * FROM Ordered order by CategoryName asc

--first 5 events(in date order).You should give the columns
--aliases(What and Details);Event date should not be included in results

select TOP 5 EventName as What , EventDetails as Details from tblEvent order by EventDate

--Create a query which uses 2 separate SELECT statements to show the
--first and last 2 events in date order from the tblEvent
--Redirect the output of this query to text,rather than the grid

With Ordered as (
    select TOP 2 * FROM tblEvent order by EventDate desc
)
select * from Ordered UNION select TOP 2 * FROM tblEvent 
