CREATE DATABASE IF NOT EXISTS football;
USE football;

-- League table --
CREATE TABLE League
(
    LeagueID INT AUTO_INCREMENT,
    Name VARCHAR(100),
    Country VARCHAR(100),
    Season VARCHAR(50),
    PRIMARY KEY (LeagueID)
);

-- Team table --
CREATE TABLE Team
(
    TeamID  INT AUTO_INCREMENT,
    Name    VARCHAR(100),
    City    VARCHAR(100),
    Stadium VARCHAR(100),
    Manager VARCHAR(100),
    LeagueID INT,
    PRIMARY KEY (TeamID),
    FOREIGN KEY (LeagueID) REFERENCES League(LeagueID)
);

-- Player table --
CREATE TABLE Player
(
    PlayerID    INT AUTO_INCREMENT,
    Name        VARCHAR(100),
    DateOfBirth DATE,
    Nationality VARCHAR(50),
    Position    VARCHAR(50),
    Number      INT,
    TeamID      INT,
    PRIMARY KEY (PlayerID),
    FOREIGN KEY (TeamID) REFERENCES Team (TeamID)
);

-- Match table --
CREATE TABLE `Match`
(
    MatchID    INT PRIMARY KEY AUTO_INCREMENT,
    Date       DATE,
    Time       DATETIME,
    Venue      VARCHAR(100),
    HomeTeamID INT,
    AwayTeamID INT,
    HomeScore  INT,
    AwayScore  INT,
    LeagueID   INT,
    FOREIGN KEY (HomeTeamID) REFERENCES Team (TeamID),
    FOREIGN KEY (AwayTeamID) REFERENCES Team (TeamID),
    FOREIGN KEY (LeagueID) REFERENCES League(LeagueID)
);

-- Goal table --
CREATE TABLE Goal
(
    GoalID   INT AUTO_INCREMENT,
    MatchID  INT,
    PlayerID INT,
    TeamID   INT,
    Time     DATETIME,
    PRIMARY KEY (GoalID),
    FOREIGN KEY (MatchID) REFERENCES `Match` (MatchID),
    FOREIGN KEY (PlayerID) REFERENCES Player (PlayerID),
    FOREIGN KEY (TeamID) REFERENCES Team (TeamID)
);

-- Standing table --
CREATE TABLE `Standing`
(
    StandingID     INT AUTO_INCREMENT,
    LeagueID       INT,
    TeamID         INT,
    Position       INT,
    Points         INT,
    Played         INT,
    Won            INT,
    Drawn          INT,
    Lost           INT,
    GoalsFor       INT,
    GoalsAgainst   INT,
    GoalDifference INT,
    PRIMARY KEY (StandingID),
    FOREIGN KEY (TeamID) REFERENCES Team (TeamID),
    FOREIGN KEY (LeagueID) REFERENCES League(LeagueID)
);

CREATE TABLE team_player (
                             player_id INT,
                             team_id INT,
                             PRIMARY KEY (player_id, team_id),
                             FOREIGN KEY (player_id) REFERENCES Player (PlayerID) ,
                             FOREIGN KEY (team_id) REFERENCES Team (TeamID)
);

