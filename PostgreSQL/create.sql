-- Various Notes:
-- in a large app, use bigint or something like that
-- give every table an "id" field so foreign field can be table.id = table_id

-- Person. In the future, add email / password for Auth.
CREATE TABLE Person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);

-- Category for a person. (In the haus, on excomm, is a sigma, etc)
CREATE TABLE Category(
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    description TEXT
);

-- One to Many Mapping between people and users.
CREATE TABLE PersonToPersonCategory(
    person_id INT NOT NULL,
    category_id INT NOT NULL,
    CONSTRAINT fk_person FOREIGN KEY (person_id) REFERENCES Person(id),
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES Category(id)
);

-- Table Representing the Chore
CREATE TABLE Chore (
    id SERIAL PRIMARY KEY,
    name VARCHAR(500) NOT NULL,
    description TEXT,
    complete_by TIMESTAMP NOT NULL,
    completed BOOLEAN,
    person_id INT NOT NULL, -- person who created it
    CONSTRAINT fk_chore_person FOREIGN KEY (person_id) REFERENCES Person(id)
);

-- Table Representing Subtask associated with the Chore
CREATE TABLE Subtask (
    id SERIAL PRIMARY KEY,
    name VARCHAR(500) NOT NULL,
    description TEXT,
    chore_id INT NOT NULL,
    person_id INT, -- person who is assigned to subtask
    CONSTRAINT fk_subtask_chore FOREIGN KEY (chore_id) REFERENCES Chore(id),
    CONSTRAINT fk_subtask_person FOREIGN KEY (person_id) REFERENCES Person(id)
);
