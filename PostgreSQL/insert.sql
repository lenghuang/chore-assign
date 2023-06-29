-- Populate Category Table
INSERT INTO Category (name, description)
VALUES
    ('In the House', 'Responsible for chores inside the house'),
    ('Excomm', 'Executive committee members'),
    ('Sigma', 'People who just joined'),
    ('Off-Campus', 'Non-resident members'),
    ('Other', 'Other category');

-- Insert 20 dummy users
INSERT INTO Person (name)
VALUES
    ('John Doe'),
    ('Jane Smith'),
    ('Michael Johnson');
    ('Emily Davis'),
    ('David Brown'),
    ('Emma Wilson'),
    ('Daniel Thompson'),
    ('Olivia Martinez'),
    ('William Anderson'),
    ('Sophia Thomas'),
    ('Alexander Taylor'),
    ('Ava Garcia'),
    ('James Robinson'),
    ('Isabella Hernandez'),
    ('Joseph Hill'),
    ('Mia Wright'),
    ('Benjamin Lopez'),
    ('Ella Adams'),
    ('Henry Turner'),
    ('Grace Parker');

-- Insert matches between categories and people
INSERT INTO PersonToPersonCategory (person_id, category_id)
VALUES
    (1, 1), -- John Doe -> In the House
    (2, 2), -- Jane Smith -> Excomm
    (3, 3), -- Michael Johnson -> Sigma
    (4, 4), -- Emily Davis -> Off-Campus
    (5, 5), -- David Brown -> Other
    (6, 1), -- Emma Wilson -> In the House
    (7, 2), -- Daniel Thompson -> Excomm
    (8, 3), -- Olivia Martinez -> Sigma
    (9, 4), -- William Anderson -> Off-Campus
    (10, 5), -- Sophia Thomas -> Other
    (11, 1), -- Alexander Taylor -> In the House
    (12, 2), -- Ava Garcia -> Excomm
    (13, 3), -- James Robinson -> Sigma
    (14, 4), -- Isabella Hernandez -> Off-Campus
    (15, 5), -- Joseph Hill -> Other
    (16, 1), -- Mia Wright -> In the House
    (17, 2), -- Benjamin Lopez -> Excomm
    (18, 3), -- Ella Adams -> Sigma
    (19, 4), -- Henry Turner -> Off-Campus
    (20, 5); -- Grace Parker -> Other

-- Insert chores
INSERT INTO Chore (name, description, complete_by, completed, person_id)
VALUES
    ('Kitchen Cleaning', 'Cleaning the kitchen area', '2023-06-28 18:00:00', false, 1),
    ('Buggy', 'Course setup for the buggy race', '2023-06-30 05:00:00', false, 2);

-- Insert subtasks for Chore 1: Kitchen Cleaning
INSERT INTO Subtask (name, description, chore_id, person_id)
VALUES
    ('Appliances', 'Clean the stove tops, microwave, and empty the refrigerator', 1, 3),
    ('Detailing', 'Clean the dishes and run them through the dishwasher', 1, 4),
    ('Pots and Pans', 'Clean the pots and pans by hand', 1, 5),
    ('Floors and Surfaces', 'Clean the countertops and mop the floors', 1, 6);

-- Insert subtasks for Chore 2: Buggy
INSERT INTO Subtask (name, description, chore_id, person_id)
VALUES
    ('Barricades', 'Arrive on course by 5am, stand there and don''t let cars in', 2, 7),
    ('Sweeping', 'Sweep leaves off of the course', 2, 8),
    ('Flagging', 'Indicate to our buggy driver when to turn', 2, 9);

