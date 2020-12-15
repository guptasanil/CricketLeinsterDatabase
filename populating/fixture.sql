USE cl;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE table Fixture;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Fixture (Comp_ID,Date, HomeTeam_ID, AwayTeam_ID, Result, Venue_ID)
VALUES (3, '2020-09-12', 1, 2, 'Home Team Win', 1),
(2, '2020-09-19',3,4, 'Home Team Win', 3),
(1, '2020-09-30',2,5, 'Away Team Win', 2),
(5, '2020-10-04', 4,2, 'Tie', 4),
(4, '2020-10-12', 1, 4, 'Home Team Win', 1),
(3, '2020-10-18',1,5, null, 2),
(1, '2020-10-22',2,4, null, 4),
(5, '2020-10-26', 3,2, null, 1),
(4, '2020-11-04', 5, 1, null, 3);


SELECT * FROM Fixture;
