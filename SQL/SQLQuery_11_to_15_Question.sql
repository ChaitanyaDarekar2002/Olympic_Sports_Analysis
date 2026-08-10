-- Question-11: Are there any countries that consistently perform well in multiple Olympic editions?
create view CountriesWinBYEdition as
WITH country_year_medals AS(
select nr.region_name,g.games_year,COUNT(m.id) as total_medal FROM competitor_event ce
    JOIN medal m
        ON ce.medal_id = m.id
    JOIN games_competitor gc
        ON ce.competitor_id = gc.id
    JOIN games g
        ON gc.games_id = g.id
    JOIN person_region pr
        ON gc.person_id = pr.person_id
    JOIN noc_region nr
        ON pr.region_id = nr.id
    WHERE m.medal_name <> 'NA'
group by nr.region_name,g.games_year
)
SELECT
    region_name,
    COUNT(games_year) AS olympic_editions,
    SUM(total_medal) AS total_medals
FROM country_year_medals
GROUP BY region_name
ORDER BY total_medals DESC;

-- Question-12: Are there any sports or events that have a higher number of medalists from a specific region?
create view MAX_MedalBy_Region as
select nr.region_name,s.sport_name,COUNT(m.id) as Total_Medal from competitor_event ce
join medal m on ce.medal_id=m.id
join event e on e.id=ce.event_id
join sport s on e.sport_id=s.id
join games_competitor gc on gc.games_id=ce.competitor_id
join games g on g.id=gc.games_id
join person_region pr on pr.person_id=gc.person_id
join noc_region nr on nr.id=pr.region_id
group by nr.region_name,s.sport_name
order by Total_Medal desc

-- Question-13: What are some notable instances of unexpected or surprising medal wins?
create view surprisingMedal as
SELECT nr.region_name,COUNT(DISTINCT gc.person_id) AS athletes,COUNT(CASE WHEN m.medal_name <> 'NA' THEN 1 END) AS medals
FROM games_competitor gc
JOIN person_region pr ON gc.person_id = pr.person_id
JOIN noc_region nr ON pr.region_id = nr.id
LEFT JOIN competitor_event ce ON gc.id = ce.competitor_id
LEFT JOIN medal m ON ce.medal_id = m.id 
--where medals > 0
GROUP BY nr.region_name
order by athletes asc,medals desc

-- Question-14: Are there any regions that have experienced significant growth or decline in Olympic participation?
create view growth_of_participation as
select g.games_year,nr.region_name,count(gc.person_id) as Total_Participation from games g
join games_competitor gc on g.id=gc.games_id
join person_region pr on pr.person_id=gc.person_id
join noc_region nr on nr.id=pr.region_id
group by g.games_year,nr.region_name
order by Total_Participation

-- Question-15: Are there any regions that have had a notable impact on the overall medal tally?
create view Medal_Tally as
SELECT
    nr.region_name,
    COUNT(*) AS total_medals,
    SUM(CASE WHEN m.medal_name='Gold' THEN 1 ELSE 0 END) AS gold,
    SUM(CASE WHEN m.medal_name='Silver' THEN 1 ELSE 0 END) AS silver,
    SUM(CASE WHEN m.medal_name='Bronze' THEN 1 ELSE 0 END) AS bronze
FROM competitor_event ce
JOIN medal m
    ON ce.medal_id = m.id
JOIN games_competitor gc
    ON ce.competitor_id = gc.id
JOIN person_region pr
    ON gc.person_id = pr.person_id
JOIN noc_region nr
    ON pr.region_id = nr.id
WHERE m.medal_name <> 'NA'
GROUP BY nr.region_name
ORDER BY total_medals DESC;