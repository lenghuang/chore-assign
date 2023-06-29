-- View Data
SELECT * FROM Category;
SELECT * FROM Person;
SELECT * FROM PersonToPersonCategory

-- View All The People And Given Categories
SELECT p.name AS name, c.name AS category, c.description
FROM PersonToPersonCategory t
JOIN Category c
ON c.id = t.category_id
JOIN Person p
ON p.id = t.person_id;

-- View All The Chores And Who Assigned Them
SELECT p.name AS assigner, c.*
FROM Chore c
JOIN Person p
ON c.person_id = p.id;

-- View All The Subtasks For the Chores
SELECT
    c.name AS chore,
    p_chore.name AS assigner,
    c.complete_by AS due_date,
    s.name AS subtask,
    s.description AS description,
    p_assignee.name AS assignee
FROM Subtask s
JOIN Chore c ON s.chore_id = c.id
JOIN Person p_assignee ON s.person_id = p_assignee.id
JOIN Person p_chore ON c.person_id = p_chore.id;

-- Messier View
SELECT c.*, p_chore.name AS assigner, s.*, p_assignee.name AS assignee
FROM Subtask s
JOIN Chore c ON s.chore_id = c.id
JOIN Person p_assignee ON s.person_id = p_assignee.id
JOIN Person p_chore ON c.person_id = p_chore.id;
