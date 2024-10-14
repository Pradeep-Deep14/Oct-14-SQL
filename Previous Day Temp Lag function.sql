Create table If Not Exists Weather (Id int, RecordDate date, Temperature int);

insert into Weather (Id, RecordDate, Temperature) values ('1', '2015-01-01', '10');
insert into Weather (Id, RecordDate, Temperature) values ('2', '2015-01-02', '25');
insert into Weather (Id, RecordDate, Temperature) values ('3', '2015-01-03', '20');
insert into Weather (Id, RecordDate, Temperature) values ('4', '2015-01-04', '30');

SELECT * FROM WEATHER


/*
Write an SQL query to find all dates' id with higher temperature compared to its previous dates (yesterday).

*/

WITH WEATHER_CTE AS
(
SELECT *,
       LAG(TEMPERATURE,1)OVER(ORDER BY RECORDDATE) AS PREVIOUS_DATE_TEMPERATURE
FROM WEATHER
)
SELECT ID
FROM WEATHER_CTE WHERE TEMPERATURE > PREVIOUS_DATE_TEMPERATURE


