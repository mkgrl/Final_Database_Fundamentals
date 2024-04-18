SELECT * FROM Player WHERE TeamID = 1;
SELECT m.*
FROM Match m
         JOIN Goal g ON m.MatchID = g.MatchID
WHERE g.PlayerID = 1;
SELECT t.Name, SUM(s.Points) AS TotalPoints
FROM Team t
         JOIN Standing s ON t.TeamID = s.TeamID
GROUP BY t.Name
ORDER BY TotalPoints DESC;

-- 1. = with non-correlated subqueries result
SELECT *
FROM Team
WHERE TeamID = (SELECT TeamID FROM Player WHERE Name = 'Cristiano Ronaldo');

-- 2. IN with non-correlated subqueries result
SELECT *
FROM Team
WHERE TeamID IN (SELECT TeamID FROM Player WHERE Nationality = 'Spanish');

-- 3. NOT IN with non-correlated subqueries result
SELECT *
FROM Team
WHERE TeamID NOT IN (SELECT TeamID FROM Player WHERE Position = 'Forward');

-- 4. EXISTS with non-correlated subqueries result
SELECT *
FROM Team t
WHERE EXISTS (SELECT * FROM Player p WHERE p.TeamID = t.TeamID AND p.Position = 'Defender');

-- 5. NOT EXISTS with non-correlated subqueries result
SELECT *
FROM Team t
WHERE NOT EXISTS (SELECT * FROM Player p WHERE p.TeamID = t.TeamID AND p.Position = 'Midfielder');

-- 6. = with correlated subqueries result
SELECT *
FROM Team t
WHERE EXISTS (SELECT * FROM Player p WHERE p.TeamID = t.TeamID AND p.Position = 'Forward');

-- 7. IN with correlated subqueries result
SELECT *
FROM Team t
WHERE TeamID IN (SELECT HomeTeamID FROM Match WHERE HomeScore > AwayScore);

-- 8. NOT IN with correlated subqueries result
SELECT *
FROM Team t
WHERE TeamID NOT IN (SELECT HomeTeamID FROM Match WHERE HomeScore < AwayScore);

-- 9. EXISTS with correlated subqueries result
SELECT *
FROM Team t
WHERE EXISTS (SELECT * FROM Match m WHERE m.HomeTeamID = t.TeamID AND m.HomeScore > 1);

-- 10. NOT EXISTS with correlated subqueries result
SELECT *
FROM Team t
WHERE NOT EXISTS (SELECT * FROM Match m WHERE m.HomeTeamID = t.TeamID AND m.HomeScore < 1);

-- 11. SELECT query with UNION
(SELECT HomeTeamID AS TeamID, HomeScore AS Score FROM Match)
UNION
(SELECT AwayTeamID AS TeamID, AwayScore AS Score FROM Match);

-- 12. SELECT query with UNION ALL
(SELECT HomeTeamID AS TeamID, HomeScore AS Score FROM Match)
UNION ALL
(SELECT AwayTeamID AS TeamID, AwayScore AS Score FROM Match);

-- 13. SELECT query with INTERSECT
(SELECT HomeTeamID AS TeamID, HomeScore AS Score FROM Match)
INTERSECT
(SELECT AwayTeamID AS TeamID, AwayScore AS Score FROM Match);

-- 14. SELECT query with EXCEPT
(SELECT HomeTeamID AS TeamID, HomeScore AS Score FROM Match)
EXCEPT
(SELECT AwayTeamID AS TeamID, AwayScore AS Score FROM Match);

-- 15. = with non-correlated subqueries result
SELECT *
FROM Team
WHERE TeamID = (SELECT TeamID FROM Player WHERE Name = 'Lionel Messi');

-- 16. IN with non-correlated subqueries result
SELECT *
FROM Team
WHERE TeamID IN (SELECT TeamID FROM Player WHERE DateOfBirth < '1990-01-01');

-- 17. NOT IN with non-correlated subqueries result
SELECT *
FROM Team
WHERE TeamID NOT IN (SELECT TeamID FROM Player WHERE Nationality = 'Portuguese');

-- 18. EXISTS with non-correlated subqueries result
SELECT *
FROM Team t
WHERE EXISTS (SELECT * FROM Player p WHERE p.TeamID = t.TeamID AND p.Position = 'Midfielder');

-- 19. NOT EXISTS with non-correlated subqueries result
SELECT *
FROM Team t
WHERE NOT EXISTS (SELECT * FROM Player p WHERE p.TeamID = t.TeamID AND p.Position = 'Forward');

-- 20. = with correlated subqueries result
SELECT *
FROM Team t
WHERE EXISTS (SELECT * FROM Player p WHERE p.TeamID = t.TeamID AND p.Position = 'Defender');

-- 21. IN with correlated subqueries result
SELECT *
FROM Team t
WHERE TeamID IN (SELECT AwayTeamID FROM Match WHERE AwayScore > HomeScore);

-- 22. NOT IN with correlated subqueries result
SELECT *
FROM Team t
WHERE TeamID NOT IN (SELECT AwayTeamID FROM Match WHERE AwayScore < HomeScore);

-- 23. EXISTS with correlated subqueries result
SELECT *
FROM Team t
WHERE EXISTS (SELECT * FROM Match m WHERE m.AwayTeamID = t.TeamID AND m.AwayScore > 1);

-- 24. NOT EXISTS with correlated subqueries result
SELECT *
FROM Team t
WHERE NOT EXISTS (SELECT * FROM Match m WHERE m.AwayTeamID = t.TeamID AND m.AwayScore < 1);

-- 25. SELECT query with UNION
(SELECT HomeTeamID AS TeamID, HomeScore AS Score FROM Match)
UNION
(SELECT AwayTeamID AS TeamID, AwayScore AS Score FROM Match);

-- 26. SELECT query with UNION ALL
(SELECT HomeTeamID AS TeamID, HomeScore AS Score FROM Match)
UNION ALL
(SELECT AwayTeamID AS TeamID, AwayScore AS Score FROM Match);

-- 27. SELECT query with INTERSECT
(SELECT HomeTeamID AS TeamID, HomeScore AS Score FROM Match)
INTERSECT
(SELECT AwayTeamID AS TeamID, AwayScore AS Score FROM Match);

-- 28. SELECT query with EXCEPT
(SELECT HomeTeamID AS TeamID, HomeScore AS Score FROM Match)
EXCEPT
(SELECT AwayTeamID AS TeamID, AwayScore AS Score FROM Match);

-- 29. = with non-correlated subqueries result
SELECT *
FROM Team
WHERE TeamID = (SELECT TeamID FROM Player WHERE Name = 'Sergio Ramos');

-- 30. IN with non-correlated subqueries result
SELECT *
FROM Team
WHERE TeamID IN (SELECT TeamID FROM Player WHERE DateOfBirth > '1985-01-01');

-- 31. NOT IN with non-correlated subqueries result
SELECT *
FROM Team
WHERE TeamID NOT IN (SELECT TeamID FROM Player WHERE Nationality = 'Argentinian');

-- 32. EXISTS with non-correlated subqueries result
SELECT *
FROM Team t
WHERE EXISTS (SELECT * FROM Player p WHERE p.TeamID = t.TeamID AND p.Position = 'Forward');

-- 33. NOT EXISTS with non-correlated subqueries resul t
SELECT *
FROM Team t
WHERE NOT EXISTS (SELECT * FROM Player p WHERE p.TeamID = t.TeamID AND p.Position = 'Defender');

-- 34. = with correlated subqueries result
SELECT *
FROM Team t
WHERE EXISTS (SELECT * FROM Player p WHERE p.TeamID = t.TeamID AND p.Position = 'Forward');

