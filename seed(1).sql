-- Student: Bishnu Bahadur GC
-- Course: CIT 406 - Database Design (Fall A 2026)
-- Module 1 - Assignment 2
-- Five valid club member records

INSERT INTO club_members (first_name, last_name, email, major, join_date)
VALUES ('Aarav', 'Sharma', 'aarav.sharma@example.edu',
        'Information Technology', '2026-09-03');

INSERT INTO club_members (first_name, last_name, email, major, join_date)
VALUES ('Maya', 'Patel', 'maya.patel@example.edu',
        'Computer Science', '2026-09-04');

INSERT INTO club_members (first_name, last_name, email, major, join_date)
VALUES ('Daniel', 'Kim', 'daniel.kim@example.edu',
        'Cybersecurity', '2026-09-05');

INSERT INTO club_members (first_name, last_name, email, major, join_date)
VALUES ('Sofia', 'Martinez', 'sofia.martinez@example.edu',
        'Business Analytics', '2026-09-06');

INSERT INTO club_members (first_name, last_name, email, major, join_date)
VALUES ('Noah', 'Williams', 'noah.williams@example.edu',
        'Software Engineering', '2026-09-07');

-- Display all five records.
SELECT *
FROM club_members
ORDER BY member_id;

