--count number of athletes from each from each country
SELECT TOP 10 Country, Count(*) AS Total_Athletes 
FROM athletes
GROUP BY Country
ORDER BY Total_Athletes DESC

--Calculate total medals won by each country

SELECT TOP 10 Team_Country,
SUM(Gold) AS Total_Gold,
SUM(Silver) AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals
GROUP BY Team_Country
ORDER BY Total_Gold DESC;

-- Calculate average number of entries by gender for each discipline 

SELECT TOP 10 Discipline, 
AVG(Female) AS Avg_Female, 
AVG(Male) AS Avg_Male
FROM entriesgender
GROUP BY Discipline;

Select TOP 10
Discipline,
Total as Participants
from entriesgender
group by Discipline, Total
order by Total desc;

select TOP 10 * from (
select count(PersonName) as Count_of_Players,Country
from athletes
group by Country) a
order by a.count_of_players desc;

select TOP 10 * from (
select count(name) as Count_of_Coaches,Country from coaches
group by Country) a
order by a.Count_of_Coaches desc;

SELECT TOP 10
    Discipline,
    SUM(Female) AS Count_of_Female,
    SUM(Total) AS Count_of_Total,
    100 * ROUND(SUM(Female) * 1.0 / SUM(Total), 4) AS Female_Participation
FROM
    entriesgender
GROUP BY
    Discipline
ORDER BY
    Female_Participation DESC;


SELECT TOP 10
    Discipline,
    SUM(Male) AS Count_of_Male,
    SUM(Total) AS Count_of_Total,
    100 * ROUND(SUM(Male) * 1.0 / SUM(Total), 4) AS Male_Participation
FROM
    entriesgender
GROUP BY
    Discipline
ORDER BY
    Male_Participation DESC;


select TOP 10 * from (
select
TeamName,
count(distinct discipline) as Count_of_Discipline
from teams
group by TeamName
) a
order by a.Count_of_Discipline desc;



