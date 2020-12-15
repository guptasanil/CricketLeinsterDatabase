use cl;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE table club;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO club (Name, Ranking, President)
VALUES ('Pembroke', 1, 'John Smith'),
('YMCA', 14, 'Alan Johnston'),
('Clontarf', 7, 'Andrew Brady'),
('Merrion', 3, 'James Joyce'),
('Dublin University', 11, 'Keith Andrews');

SELECT * FROM club;
