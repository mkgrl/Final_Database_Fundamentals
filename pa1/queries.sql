
-- Query to select players belonging to Team with TeamID 1 --
SELECT *
FROM Player
WHERE TeamID = 1;

-- Query to select matches where a specific player (PlayerID = 1) scored a goal --
SELECT m.*
FROM `Match` m
         JOIN Goal g ON m.MatchID = g.MatchID
WHERE g.PlayerID = 1;

-- Query to calculate total points for each team and order by total points descending --
SELECT t.Name, SUM(s.Points) AS TotalPoints
FROM Team t
         JOIN Standing s ON t.TeamID = s.TeamID
GROUP BY t.Name
ORDER BY TotalPoints DESC;
