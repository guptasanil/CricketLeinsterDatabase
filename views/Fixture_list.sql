use cl;
DROP VIEW Fixture_List;
CREATE VIEW Fixture_List AS 
SELECT fixture.Date AS `Date`, team.name AS `Home Team`, team2.name AS `Away Team`, venue.name AS `Venue`, competition.Name AS `Competition`, fixture.Result AS `Result`
FROM fixture
INNER JOIN team ON fixture.HomeTeam_ID = team.team_ID INNER JOIN team team2 ON fixture.AwayTeam_ID = team2.team_ID INNER JOIN venue ON fixture.Venue_ID = Venue.Venue_ID INNER JOIN competition ON fixture.Comp_ID = competition.comp_ID
ORDER BY Date;
SELECT * FROM Fixture_List;