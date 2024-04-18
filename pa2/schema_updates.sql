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

