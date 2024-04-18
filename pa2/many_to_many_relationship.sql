-- Team table --
CREATE TABLE Team (
                      TeamID INT AUTO_INCREMENT,
                      Name VARCHAR(100),
                      City VARCHAR(100),
                      Stadium VARCHAR(100),
                      Manager VARCHAR(100),
                      PRIMARY KEY (TeamID)
);

-- Player table --
CREATE TABLE Player (
                        PlayerID INT AUTO_INCREMENT,
                        Name VARCHAR(100),
                        DateOfBirth DATE,
                        Nationality VARCHAR(50),
                        Position VARCHAR(50),
                        Number INT,
                        PRIMARY KEY (PlayerID)
);

-- Many-to-Many table --
CREATE TABLE team_players (
                              squad_id INT AUTO_INCREMENT,
                              team_id INT,
                              player_id INT,
                              start_date DATE,
                              end_date DATE,
                              PRIMARY KEY (squad_id),
                              FOREIGN KEY (team_id) REFERENCES Team(TeamID),
                              FOREIGN KEY (player_id) REFERENCES Player(PlayerID)
);

-- Match table --
CREATE TABLE Match (
                       MatchID INT AUTO_INCREMENT,
                       Date DATE,
                       Time TIME,
                       Venue VARCHAR(100),
                       PRIMARY KEY (MatchID)
);

-- Match_Player table --
CREATE TABLE match_players (
                               match_id INT,
                               player_id INT,
                               PRIMARY KEY (match_id, player_id),
                               FOREIGN KEY (match_id) REFERENCES Match(MatchID),
                               FOREIGN KEY (player_id) REFERENCES Player(PlayerID)
);

-- Goal table --
CREATE TABLE Goal (
                      GoalID INT AUTO_INCREMENT,
                      MatchID INT,
                      PlayerID INT,
                      TeamID INT,
                      Time TIME,
                      PRIMARY KEY (GoalID),
                      FOREIGN KEY (MatchID) REFERENCES Match(MatchID),
                      FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
                      FOREIGN KEY (TeamID) REFERENCES Team(TeamID)
);

-- Standing table --
CREATE TABLE Standing (
                          StandingID INT AUTO_INCREMENT,
                          LeagueID INT,
                          TeamID INT,
                          MatchDayID INT,
                          Position INT,
                          Points INT,
                          Played INT,
                          Won INT,
                          Drawn INT,
                          Lost INT,
                          GoalsFor INT,
                          GoalsAgainst INT,
                          GoalDifference INT,
                          PRIMARY KEY (StandingID),
                          FOREIGN KEY (TeamID) REFERENCES Team(TeamID),
                          FOREIGN KEY (MatchDayID) REFERENCES Match(MatchID)
);

-- Sample data for Team table --
INSERT INTO Team (Name, City, Stadium, Manager) VALUES
                                                    ('Real Madrid', 'Madrid', 'Santiago Bernabeu', 'Zinedine Zidane'),
                                                    ('FC Barcelona', 'Barcelona', 'Camp Nou', 'Ronald Koeman'),
                                                    ('Manchester United', 'Manchester', 'Old Trafford', 'Ole Gunnar Solskjaer');

-- Sample data for Player table --
INSERT INTO Player (Name, DateOfBirth, Nationality, Position, Number) VALUES
                                                                          ('Lionel Messi', '1987-06-24', 'Argentinian', 'Forward', 10),
                                                                          ('Cristiano Ronaldo', '1985-02-05', 'Portuguese', 'Forward', 7),
                                                                          ('Sergio Ramos', '1986-03-30', 'Spanish', 'Defender', 4);

-- Sample data for Match table --
INSERT INTO Match (Date, Time, Venue) VALUES
                                          ('2024-01-01', '18:00:00', 'Santiago Bernabeu'),
                                          ('2024-01-15', '20:00:00', 'Camp Nou'),
                                          ('2024-02-01', '17:30:00', 'Old Trafford');

-- Sample data for Goal table --
INSERT INTO Goal (MatchID, PlayerID, TeamID, Time) VALUES
                                                       (1, 2, 1, '00:23:45'),
                                                       (2, 1, 2, '00:10:20'),
                                                       (3, 1, 2, '00:55:00');

-- Sample data for Standing table (for demonstration purposes) --
INSERT INTO Standing (LeagueID, TeamID, MatchDayID, Position, Points, Played, Won, Drawn, Lost, GoalsFor, GoalsAgainst, GoalDifference) VALUES
                                                                                                                                            (1, 1, 1, 1, 20, 10, 6, 2, 2, 20, 10, 10),
                                                                                                                                            (1, 2, 1, 2, 18, 10, 5, 3, 2, 15, 12, 3),
                                                                                                                                            (1, 3, 1, 3, 15, 10, 4, 3, 3, 12, 15, -3);

-- Sample data for Team_Players (for demonstration purposes) --
INSERT INTO team_players (team_id, player_id, start_date, end_date) VALUES
                                                                        (1, 1, '2023-01-01', NULL),
                                                                        (2, 2, '2023-01-01', NULL),
                                                                        (3, 3, '2023-01-01', NULL);

-- Sample data for Match_Players --
INSERT INTO match_players (match_id, player_id) VALUES
                                                    (1, 1),
                                                    (2, 2),
                                                    (3, 3);

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