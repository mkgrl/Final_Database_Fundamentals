-- Stored Procedure with OUT parameter

DELIMITER //
CREATE PROCEDURE UpdatePlayerNumber(
    IN PlayerID INT,
    OUT UpdatedNumber INT
)
BEGIN
SELECT Number
INTO UpdatedNumber
FROM Player
WHERE PlayerID = PlayerID;

UPDATE Player
SET Number = Number + 1
WHERE PlayerID = PlayerID;

SELECT Number
INTO UpdatedNumber
FROM Player
WHERE PlayerID = PlayerID;
END//
DELIMITER ;

-- Stored Procedure with transactional mechanism

DELIMITER //
CREATE PROCEDURE AddPlayer(
    IN PlayerName VARCHAR(100),
    IN PlayerTeam INT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;
RESIGNAL;
END;

START TRANSACTION;

INSERT INTO Player (Name, TeamID) VALUES (PlayerName, PlayerTeam);

IF (SELECT COUNT(*) FROM Player WHERE Name = PlayerName AND TeamID = PlayerTeam) > 0 THEN
        COMMIT;
ELSE
        ROLLBACK;
END IF;
END//
DELIMITER ;
 

-- Calling procedure with OUT parameter
SET @updatedNumber = 0;
CALL UpdatePlayerNumber(1, @updatedNumber);
SELECT @updatedNumber;

-- Calling procedure with transactional mechanism
CALL AddPlayer('New Player', 1);
