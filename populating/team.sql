USE cl;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE table team;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Team (Name, League_pos, Coach, Captain, Club_ID)
VALUES ('Pembroke Firsts', 1, 'Ricky Ponting', 'Virat Kohli', 1),
('YMCA Firsts', 5, 'Brian Lara', 'Aaron Finch', 2),
("Clontarf Firsts", 4, 'Don Bradman', 'Faf Du Plessis', 3),
("Merrion Firsts",2, 'Viv Richards', 'Ross Taylor', 4),
("DU Firsts", 8, 'Ian Chappell', 'Steve Smith', 5);

SELECT * FROM team;
