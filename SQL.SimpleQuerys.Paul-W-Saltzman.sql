--Create a query to list out the event name and event data from the tblEvent table, with the most recent first.
SELECT EventName
      ,EventDetails
      ,EventDate
  FROM WorldEvents.dbo.tblEvent
  ORDER BY EventDate DESC

--Create a query to list out the id number and name of the last 3 categories from the tblCategory table in alphabetical order,
  
SELECT Top 3 *
  FROM WorldEvents.dbo.tblCategory
  Order by CategoryName Desc

--Write a query to show the first 5 events (in date order) from the tblEvent table. You should give the columns aliases 
--(What and Details in this case); Even though you're sorting by the event date, it shouldn't be included in your results.

SELECT Top 5 EventName AS What
      ,EventDetails AS Details
  FROM WorldEvents.dbo.tblEvent
  ORDER BY EventDate


--Create a query which uses two separate SELECT statements to show the first and last 2 events in date order from the tblEvent table. Redirect the output of this query to text, rather than to grid.
SELECT TOP (2) EventID
      ,EventName
      ,EventDetails
      ,EventDate
      ,CountryID
      ,CategoryID
  FROM WorldEvents.dbo.tblEvent
  ORDER BY EventDate;
  SELECT TOP (2) EventID
      ,EventName
      ,EventDetails
      ,EventDate
      ,CountryID
      ,CategoryID
  FROM WorldEvents.dbo.tblEvent
  ORDER BY EventDate DESC;


EventID     EventName                                                                                                                                                                                                                                                        EventDetails                                                                                                                                                                                                                                                     EventDate  CountryID   CategoryID
----------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---------- ----------- -----------
88          The Wealth of Nations published                                                                                                                                                                                                                                  Adam Smith's seminal work began the "dismal science" of economics, explaining the division of labour by reference to a needle factory.                                                                                                                           1776-03-09 7           8
87          US colonies declare independence                                                                                                                                                                                                                                 Would history have been different if Britain had treated its colonies more fairly?  Perhaps we'd have missed the first man on the moon, the welcoming of refugees from around the world, and Donald Trump.                                                       1776-07-04 5           1

(2 rows affected)

EventID     EventName                                                                                                                                                                                                                                                        EventDetails                                                                                                                                                                                                                                                     EventDate  CountryID   CategoryID
----------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---------- ----------- -----------
92          Donald Trump elected                                                                                                                                                                                                                                             The United States shocks the world by electing Donald Trump, a man with (it's fair to say) illiberal views.                                                                                                                                                      2016-11-08 5           1
12          Brexit vote                                                                                                                                                                                                                                                      By a narrow majority Britain votes to leave the European Union (England and Wales voted to leave, although Scotland and Northern Ireland voted to remain).                                                                                                       2016-06-23 7           1

(2 rows affected)


Completion time: 2023-09-18T17:10:41.6084547-05:00
