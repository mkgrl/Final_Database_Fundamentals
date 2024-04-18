-- Query to fetch players for a team --
SELECT p.*
FROM Player p
         JOIN team_players tp ON p.PlayerID = tp.player_id
WHERE tp.team_id = 1;

-- Query to fetch matches for a player --
SELECT m.*
FROM Match m
         JOIN match_players mp ON m.MatchID = mp.match_id
WHERE mp.player_id = 1;

-- Points --
SELECT t.Name, SUM(s.Points) AS TotalPoints
FROM Team t
         JOIN Standing s ON t.TeamID = s.TeamID
GROUP BY t.Name
ORDER BY TotalPoints DESC;
