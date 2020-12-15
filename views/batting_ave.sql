use cl;
DROP VIEW Batting_Averages;
CREATE VIEW Batting_Averages AS
SELECT First_name AS 'First Name', Last_name AS 'Last Name', Batting_average AS 'Batting Average'
FROM Player
Order BY Batting_average DESC;

SELECT * FROM Batting_Averages;






