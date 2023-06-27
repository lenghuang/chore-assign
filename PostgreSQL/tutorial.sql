-- Following this tutorial: https://www.youtube.com/watch?v=zw4s3Ey8ayo

-- ##############
-- # SQL Basics #
-- ##############

-- Creating a "Schema" which is our table, or database
-- (datatype) SERIAL = adds one to each number
-- (datatype) VARCHAR(n) = text for some fixed length n
-- (datatype) TEXT = text unbounded
-- (constraint) PRIMARY = designates unique identifier for columns
-- (keyword) user, table, cannot be part of the name. use quotes if you must [ "user" ]

CREATE TABLE "profile"(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	email VARCHAR(255),
	password TEXT,
	age INT
);

-- Generating data for our table
-- Here, id is not need since it's autogenerated
-- Single quotes are used for text
-- Double quotes are specifically for columns and tables

INSERT INTO "profile" (email, name, age, password)
VALUES
	('troy@fake.email', 'Troy', 26, '9182urhfiquf19'),
	('chris@fake.email', 'Chris', 32, 'asfg2edxs3b3f12'),
	('julian@fake.email', 'Julian', 32, 'mmmm12s3b3f12'),
	('davis@fake.email', 'Davis', 24, '09dsdj112411'),
	('nick@fake.email', 'Nick', 81, 'aosij10w9ieodslk');

-- View data by using SELECT.
-- We select columns, so * means all columns not rows

SELECT * FROM "profile";
SELECT * FROM "profile" WHERE age > 27;

-- Use UPDATE and then SET for column, WHERE for row

UPDATE "profile" SET age = 30 WHERE id = 1;

-- Use DELETE and then WHERE to specify row. Unspecified will delete the table.

DELETE FROM "profile" WHERE id = 3;
DELETE FROM "profile";
DROP TABLE "profile";

-- ##########################################
-- # The Concept of a "Relational" Database #
-- ##########################################
--
-- Remember that an entity is an object in the database, or a row.
-- One to One:
--      Commonly used for "column bloat" where a table starts having too many columns.
-- One to Many:
--      It's up to the "many" to specify who owns it.
--      For example, a post will reference the user it belongs to.
-- Many to Many:
--      Relates two tables together through a separate table (JOIN table).
--      For example, a class in school will relate many students to various teachers.

-- Let's create a table for posts. At the end, we're creating a constraint where the foreign key (named profile_id in the post table), references the id column in the profile table.

CREATE TABLE "post"(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	content TEXT,
	profile_id INT,
	CONSTRAINT fk_profile
		FOREIGN KEY(profile_id)
			REFERENCES "profile"(id)
);

-- Let's make some dummy data

INSERT INTO "post" (name, content, profile_id)
VALUES
	('Question', 'Do you wanna build a snowman?', 2),
	('Persuasion', 'Come on lets go and play', 2),
	('Reason', 'I never see you anymore', 2),
	('Call to Action', 'Come out the door', 2),
	('Aliens', 'Fate of the world on the line, I want andre igoudala!', 4);

-- JOINS allow us to combine two tables. Normally you just want a subset because there can be a lot of overlapping column names.

SELECT * FROM "profile" JOIN "post" ON "post".profile_id = "profile".id;

SELECT profile.name,
	profile.email,
	profile.age,
	post.name AS title,
	post.content
FROM profile JOIN post ON post.profile_id = profile.id;


