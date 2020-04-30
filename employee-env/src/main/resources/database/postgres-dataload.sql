/* load the records. */
INSERT INTO account(username, password, emp_id, createDate, updateDate) 
VALUES('demo', '$2a$10$oxSJl.keBwxmsMLkcT9lPeAIxfNTPNQxpeywMrF7A3kVszwUTqfTK', 1, '2018-06-22 19:10:25-07', '2018-06-22 19:10:25-07');

INSERT INTO department(name) 
VALUES('Dev-1');
INSERT INTO department(name) 
VALUES('Dev-2');
INSERT INTO department(name) 
VALUES('Dev-3');

INSERT INTO position(name) 
VALUES('JSE');
INSERT INTO position(name) 
VALUES('SE');
INSERT INTO position(name) 
VALUES('SSE');
INSERT INTO position(name) 
VALUES('TL');
INSERT INTO position(name) 
VALUES('PL');
INSERT INTO position(name) 
VALUES('PM');
INSERT INTO position(name) 
VALUES('Junior HR');
INSERT INTO position(name) 
VALUES('Senior HR');

INSERT INTO japaneseLevel(name) 
VALUES('Beginner');
INSERT INTO japaneseLevel(name) 
VALUES('N5');
INSERT INTO japaneseLevel(name) 
VALUES('N4');
INSERT INTO japaneseLevel(name) 
VALUES('N3');
INSERT INTO japaneseLevel(name) 
VALUES('N2');
INSERT INTO japaneseLevel(name) 
VALUES('N1');



commit;