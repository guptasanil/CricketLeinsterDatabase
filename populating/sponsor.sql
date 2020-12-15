USE cl;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE table Sponsor;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Sponsor (Name, ContractLength)
VALUES ('Heineken', 3),
('Guiness', 4),
('Barclays', 8),
('Avonmore', 3),
('Hilton', 1);

SELECT * FROM Sponsor;



