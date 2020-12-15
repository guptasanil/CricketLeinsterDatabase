USE cl;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE table Competition;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Competition (Name, Format, Sponsor_ID, FinalVenue_ID)
VALUES ('Alan Murray Cup', 20,1, 4),
('Tillain Cup', 20, 2, 3),
('Premier League', 50, 3, 5),
('Leinster Senior Cup',40, 4, 1),
('Middle Cup', 50, 5, 2);

SELECT * FROM Competition;
