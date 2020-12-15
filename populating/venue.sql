USE cl;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE table Venue;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Venue (Name, Capacity, Club_ID)
VALUES ('Sydney Parade', 800, 1),
('Claremont Road', 600, 2),
('Castle Avenue', 750, 3),
('Anglesea Road', 300, 4),
('College Park', 1000, 5);

SELECT * FROM Venue;
