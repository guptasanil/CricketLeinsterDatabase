USE cl;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE table Player;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Player (First_name, Last_name, Age, Batting_average, Bowling_average, Team_ID)
VALUES ('Steve', 'Smith', 29, 48.50, null, 2),
('Virat', 'Kohli', 29, 54.65, null, 1),
('Luke', 'Wright', 32, 36.3, null, 3),
('Sam', 'Curran', 24, 23.6, 21, 4),
('Kane', 'Williamson', 30, 46.34, 28.9, 5),
('Mitch', 'Starc', 26, 17, 16.5, 5),
('James', 'Anderson', 34, 11.3, 13.3, 1);

SELECT * FROM Player;
