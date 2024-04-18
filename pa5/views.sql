CREATE VIEW League_Player_Stats AS
SELECT
    p.Name AS PlayerName,
    t.Name AS TeamName,
    l.Name AS LeagueName,
    COUNT(g.PlayerID) AS TotalGoals,
    GROUP_CONCAT(CONCAT(m.Date, ' (', g.GoalCount, ')') ORDER BY m.Date SEPARATOR ', ') AS MatchDaysWithGoals
FROM
    Player p
        JOIN
    Team t ON p.TeamID = t.TeamID
        JOIN
    (SELECT MatchID, PlayerID, COUNT(*) AS GoalCount FROM Goal GROUP BY MatchID, PlayerID) g ON p.PlayerID = g.PlayerID
        JOIN
    `Match` m ON g.MatchID = m.MatchID
        JOIN
    League l ON m.LeagueID = l.LeagueID
GROUP BY
    p.PlayerID, t.TeamID, l.LeagueID
    LIMIT 1 OFFSET 2;

CREATE VIEW League_Player_Stats2 AS
SELECT
    p.Name AS PlayerName,
    t.Name AS TeamName,
    l.Name AS LeagueName,
    COUNT(g.PlayerID) AS TotalGoals,
    GROUP_CONCAT(CONCAT(m.Date, ' (', g.GoalCount, ')') ORDER BY m.Date SEPARATOR ', ') AS MatchDaysWithGoals
FROM
    Player p
        JOIN
    Team t ON p.TeamID = t.TeamID
        JOIN
    (SELECT MatchID, PlayerID, COUNT(*) AS GoalCount FROM Goal GROUP BY MatchID, PlayerID) g ON p.PlayerID = g.PlayerID
        JOIN
    `Match` m ON g.MatchID = m.MatchID
        JOIN
    League l ON m.LeagueID = l.LeagueID
GROUP BY
    p.PlayerID, t.TeamID, l.LeagueID
    LIMIT 1 OFFSET 1;
