use cl;
DROP VIEW Venue_view;
CREATE VIEW Venue_view AS 
SELECT venue.name AS `Name`, venue.Capacity AS `Capacity`, Club.Name AS `Club`
FROM venue
INNER JOIN club ON venue.club_ID = club.club_ID;
SELECT * FROM Venue_view;