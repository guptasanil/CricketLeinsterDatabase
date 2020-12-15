use cl;
DROP VIEW Player_view;
CREATE VIEW Player_view AS 
SELECT Player.First_name AS `First Name`, Player.Last_name AS `Last Name`, Player.Age, Team.Name AS `Team Name`, Player.Batting_average AS `Batting Average`, Player.Bowling_average AS `Bowling Average`
FROM Player
INNER JOIN Team ON Player.Team_ID=Team.Team_ID
Order BY `Last Name`;
SELECT * FROM Player_view;

