use cl;
DROP VIEW Bowling_Averages;
CREATE VIEW Bowling_Averages AS
SELECT First_name, Last_name, Bowling_Average
FROM Player
Order BY Bowling_Average ASC;
SELECT * FROM Bowling_Averages;

