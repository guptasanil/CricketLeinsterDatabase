use cl;
DROP VIEW Comp_view;
CREATE VIEW Comp_view AS 
SELECT competition.name AS `Name`, competition.Format AS `Format`, Venue.Name AS `Venue of Final`, Sponsor.name AS `Sponsor`
FROM competition
INNER JOIN Venue ON competition.FinalVenue_ID = venue.venue_ID INNER JOIN Sponsor ON competition.Sponsor_ID = Sponsor.Sponsor_ID;
SELECT * FROM Comp_view;