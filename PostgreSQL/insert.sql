-- Populate Category Table
INSERT INTO Category (name, description) VALUES ('In the House', 'Responsible for chores inside the house');
INSERT INTO Category (name, description) VALUES ('Excomm', 'Executive committee members');
INSERT INTO Category (name, description) VALUES ('Sigma', 'People who just joined');
INSERT INTO Category (name, description) VALUES ('Off-Campus', 'Non-resident members');
INSERT INTO Category (name, description) VALUES ('Other', 'Other category');

-- Insert 20 dummy users
INSERT INTO Person (name) VALUES ('John Doe');
INSERT INTO Person (name) VALUES ('Jane Smith');
INSERT INTO Person (name) VALUES ('Michael Johnson');
INSERT INTO Person (name) VALUES ('Emily Davis');
INSERT INTO Person (name) VALUES ('David Brown');
INSERT INTO Person (name) VALUES ('Emma Wilson');
INSERT INTO Person (name) VALUES ('Daniel Thompson');
INSERT INTO Person (name) VALUES ('Olivia Martinez');
INSERT INTO Person (name) VALUES ('William Anderson');
INSERT INTO Person (name) VALUES ('Sophia Thomas');
INSERT INTO Person (name) VALUES ('Alexander Taylor');
INSERT INTO Person (name) VALUES ('Ava Garcia');
INSERT INTO Person (name) VALUES ('James Robinson');
INSERT INTO Person (name) VALUES ('Isabella Hernandez');
INSERT INTO Person (name) VALUES ('Joseph Hill');
INSERT INTO Person (name) VALUES ('Mia Wright');
INSERT INTO Person (name) VALUES ('Benjamin Lopez');
INSERT INTO Person (name) VALUES ('Ella Adams');
INSERT INTO Person (name) VALUES ('Henry Turner');
INSERT INTO Person (name) VALUES ('Grace Parker');

-- Insert matches between categories and people
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (1, 1); -- John Doe -> In the House
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (2, 2); -- Jane Smith -> Excomm
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (3, 3); -- Michael Johnson -> Sigma
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (4, 4); -- Emily Davis -> Off-Campus
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (5, 5); -- David Brown -> Other
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (6, 1); -- Emma Wilson -> In the House
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (7, 2); -- Daniel Thompson -> Excomm
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (8, 3); -- Olivia Martinez -> Sigma
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (9, 4); -- William Anderson -> Off-Campus
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (10, 5); -- Sophia Thomas -> Other
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (11, 1); -- Alexander Taylor -> In the House
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (12, 2); -- Ava Garcia -> Excomm
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (13, 3); -- James Robinson -> Sigma
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (14, 4); -- Isabella Hernandez -> Off-Campus
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (15, 5); -- Joseph Hill -> Other
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (16, 1); -- Mia Wright -> In the House
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (17, 2); -- Benjamin Lopez -> Excomm
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (18, 3); -- Ella Adams -> Sigma
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (19, 4); -- Henry Turner -> Off-Campus
INSERT INTO PersonToPersonCategory (person_id, category_id) VALUES (20, 5); -- Grace Parker -> Other

-- View Data
SELECT * FROM Category;
SELECT * FROM Person;
SELECT * FROM PersonToPersonCategory

-- View All The People In Given Categories
SELECT p.name AS name, c.name AS category, c.description
FROM PersonToPersonCategory t
JOIN Category c
ON c.id = t.category_id
JOIN Person p
ON p.id = t.person_id;