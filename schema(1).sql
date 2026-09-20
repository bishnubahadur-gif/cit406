-- Student: Bishnu Bahadur GC
-- Course: CIT 406 - Database Design (Fall A 2026)
-- Module 1 - Assignment 2
-- Task 2: First Schema Build
-- University: Atlantis University

CREATE TABLE club_members (
    member_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    major VARCHAR(100),
    join_date DATE NOT NULL
);

