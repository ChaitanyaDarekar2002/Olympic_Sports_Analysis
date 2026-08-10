-- Question-6: Are there any sports that have a higher number of events for one gender compared to the other?
create view Men_WomenBySports as
select s.sport_name,sum(case when e.event_name like '%Men%' Then 1 else 0 end )as Men_Events,sum(case when e.event_name like '%Women%' then 1 else 0 end)as Women_Events
from sport s
join event e on e.id=s.id
group by s.sport_name

-- Question-7: Are there any new events that have been introduced in recent editions of the Olympics?
create view NEW_GamesByYears as
SELECT e.event_name,MIN(g.games_year) AS first_year FROM event e
JOIN competitor_event ce ON e.id = ce.event_id
JOIN games_competitor gc ON ce.competitor_id = gc.id
JOIN games g ON gc.games_id = g.id
GROUP BY e.event_name
order by first_year desc

-- Question-8: Are there any events that have been discontinued or removed from the Olympics?
create view RemoveGamesByYear as
select e.event_name,MIN(g.games_year)as Last_year from event e
join competitor_event ce on e.id=ce.competitor_id
join games_competitor gc on ce.competitor_id=gc.id
join games g on g.id=gc.games_id
group by e.event_name
order by Last_year desc

-- Question-9: Are there any notable trends in the height and weight of participants over time?
create view Avg_Height_eight as
select g.games_year,ROUND(avg(p.height),2) as avg_height,ROUND(AVG(p.weight),2) as avg_weight from games g
JOIN games_competitor gc
    ON g.id = gc.games_id
JOIN person p
    ON gc.person_id = p.id
WHERE p.height IS NOT NULL AND p.weight IS NOT NULL
group by g.games_year
order by g.games_year 

-- Question-10: Are there any dominant countries or regions in specific sports or events?
create view DominantOfRegions_By_Sports as
WITH sport_region_medals AS
(
SELECT s.sport_name,nr.region_name,COUNT(*) AS total_medals FROM competitor_event ce
JOIN medal m ON ce.medal_id = m.id
JOIN event e ON ce.event_id = e.id
JOIN sport s ON e.sport_id = s.id
JOIN games_competitor gc ON ce.competitor_id = gc.id
JOIN person_region pr ON gc.person_id = pr.person_id
JOIN noc_region nr ON pr.region_id = nr.id
WHERE m.medal_name <> 'NA'
GROUP BY s.sport_name,nr.region_name
),

ranked_regions AS
(
    SELECT *,
           RANK() OVER
           (
               PARTITION BY sport_name
               ORDER BY total_medals DESC
           ) AS rnk
    FROM sport_region_medals
)
SELECT sport_name,region_name,total_medals
FROM ranked_regions
WHERE rnk = 1
ORDER BY sport_name;