-- # Question-1: Are there any trends or patterns in the frequency of hosting the Olympic Games?
create view PatternsByHosting as
SELECT
    games_year,
    season,
    games_name,
    games_year - LAG(games_year) OVER (
        PARTITION BY season
        ORDER BY games_year
    ) AS year_gap
FROM games
ORDER BY season, games_year;

-- # Question-2: Are there any notable events or occurrences associated with specific Olympic Games?
create view EventsByGames as
select g.games_year,g.games_name,g.season,COUNT(gc.person_id) as Total_Athletes,count(ce.event_id) as Total_event,count(case when m.medal_name <> 'NA' then 1 end)as medals_awarded
from games g
join games_competitor gc on g.id=gc.games_id
join competitor_event ce on gc.id=ce.competitor_id
join medal m on ce.medal_id=m.id
group by g.games_name,g.games_year,g.id,g.season
order by g.games_year

-- Question-3: Are there any emerging sports that have been recently added to the Olympics?
create view AddedSportsByYears as
SELECT
        s.sport_name,
        MIN(g.games_year) AS first_appearance
    FROM sport s
    JOIN event e
        ON s.id = e.sport_id
    JOIN competitor_event ce
        ON e.id = ce.event_id
    JOIN games_competitor gc
        ON ce.competitor_id = gc.id
    JOIN games g
        ON gc.games_id = g.id
    GROUP BY s.sport_name
    ORDER BY first_appearance DESC;

    -- Question-4: How has the popularity of certain sports changed over the years?
create view PopOfSportsByYears as
SELECT g.games_year,s.sport_name,COUNT(DISTINCT gc.person_id) AS total_participants
FROM sport s
JOIN event e
    ON s.id = e.sport_id
JOIN competitor_event ce
    ON e.id = ce.event_id
JOIN games_competitor gc
    ON ce.competitor_id = gc.id
JOIN games g
    ON gc.games_id = g.id
GROUP BY g.games_year,s.sport_name
ORDER BY g.games_year,total_participants DESC;

-- Question-5: Are there any sports that are specific to a particular region or culture?
create view RegionBySports as
SELECT s.sport_name,nr.region_name,COUNT(DISTINCT gc.person_id) AS participants FROM sport s
JOIN event e
    ON s.id = e.sport_id
JOIN competitor_event ce
    ON e.id = ce.event_id
JOIN games_competitor gc
    ON ce.competitor_id = gc.id
JOIN person_region pr
    ON gc.person_id = pr.person_id
JOIN noc_region nr
    ON pr.region_id = nr.id
GROUP BY s.sport_name,nr.region_name
ORDER BY s.sport_name,participants DESC;