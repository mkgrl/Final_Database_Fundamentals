-- Sample data for League table --
INSERT INTO League (Name, Country, Season)
VALUES ('La Liga', 'Spain', '2023/2024'),
       ('Premier League', 'England', '2023/2024');

-- Sample data for Team table --
INSERT INTO Team (Name, City, Stadium, Manager, LeagueID)
VALUES ('Real Madrid', 'Madrid', 'Santiago Bernabeu', 'Zinedine Zidane', 1),
       ('FC Barcelona', 'Barcelona', 'Camp Nou', 'Ronald Koeman', 1),
       ('Manchester United', 'Manchester', 'Old Trafford', 'Ole Gunnar Solskjaer', 2);

-- Sample data for Player table --
INSERT INTO Player (Name, DateOfBirth, Nationality, Position, Number, TeamID)
VALUES ('Lionel Messi', '1987-06-24', 'Argentinian', 'Forward', 10, 2),
       ('Cristiano Ronaldo', '1985-02-05', 'Portuguese', 'Forward', 7, 1),
       ('Sergio Ramos', '1986-03-30', 'Spanish', 'Defender', 4, 1);

-- Sample data for Match table --
INSERT INTO `Match` (Date, Time, Venue, HomeTeamID, AwayTeamID, HomeScore, AwayScore, LeagueID)
VALUES ('2024-01-01', '2024-01-01 18:00:00', 'Santiago Bernabeu', 1, 2, 2, 1, 1),
       ('2024-01-15', '2024-01-15 20:00:00', 'Camp Nou', 2, 1, 1, 3, 1),
       ('2024-02-01', '2024-02-01 17:30:00', 'Old Trafford', 3, 1, 0, 2, 2);

-- Sample data for Goal table --
INSERT INTO Goal (MatchID, PlayerID, TeamID, Time)
VALUES (1, 2, 1, '2024-01-01 00:23:45'),
       (2, 1, 2, '2024-01-15 00:10:20'),
       (3, 1, 2, '2024-02-01 00:55:00');

-- Sample data for Standing table (for demonstration purposes) --
INSERT INTO Standing (LeagueID, TeamID, Position, Points, Played, Won, Drawn, Lost, GoalsFor, GoalsAgainst,
                      GoalDifference)
VALUES (1, 1, 1, 20, 10, 6, 2, 2, 20, 10, 10),
       (1, 2, 2, 18, 10, 5, 3, 2, 15, 12, 3),
       (2, 3, 3, 15, 10, 4, 3, 3, 12, 15, -3);
