-- Create a query to list out the event name and event data from the tblEvent table, with the most recent first.
SELECT
    EventName,
    EventDetails,
    EventDate
FROM
    tblEvent
ORDER BY
    EventDate DESC;

-- Create a query to list out the id number and name of the last 3 categories from the tblCategory table in alphabetical order.
WITH
    categories
    AS
    (
        SELECT
            CategoryID,
            CategoryName
        FROM
            tblCategory
        ORDER BY
	CategoryName DESC OFFSET 0 ROWS
    )
SELECT
    TOP 3
    *
FROM
    categories;
