-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT teams.name, players.first_name, players.last_name, max(stats.home_runs) FROM stats
INNER JOIN teams ON teams.id = stats.team_id
INNER JOIN players ON players.id = stats.player_id
WHERE teams.year = 2019;

