# CIT 406: Database Design
## Module 1 – Assignment 2: Failed Insert Tests

**Student:** Bishnu Bahadur GC  
**University:** Atlantis University  
**Term:** Fall A 2026  
**Task 2:** First Schema Build  
**Test environment:** PostgreSQL online execution environment  

Before the failed tests, `schema.sql` created the `club_members` table and `seed.sql` successfully inserted and displayed five valid records.

## Test 1: Missing First Name

### SQL statement

```sql
INSERT INTO club_members (last_name, email, major, join_date)
VALUES ('Sharma', 'missing.firstname@example.edu',
        'Information Technology', '2026-09-10');
```

### Exact PostgreSQL error message

```text
ERROR: null value in column "first_name" of relation "club_members" violates not-null constraint
DETAIL: Failing row contains (6, null, Sharma, missing.firstname@example.edu, Information Technology, 2026-09-10).
```

### Explanation

PostgreSQL rejected this row because `first_name` was defined with a `NOT NULL` constraint. Since the INSERT statement did not supply a first name, PostgreSQL tried to use NULL, which is not permitted for that column.

## Test 2: Missing Email Address

### SQL statement

```sql
INSERT INTO club_members (first_name, last_name, major, join_date)
VALUES ('Ram', 'Thapa', 'Computer Science', '2026-09-10');
```

### Exact PostgreSQL error message

```text
ERROR: null value in column "email" of relation "club_members" violates not-null constraint
DETAIL: Failing row contains (6, Ram, Thapa, null, Computer Science, 2026-09-10).
```

### Explanation

PostgreSQL rejected this row because `email` was also defined with a `NOT NULL` constraint. The INSERT statement omitted the email address, so the attempted NULL value violated the table rule.

## Test Result Summary

Both tests failed as intended. The results show that the `NOT NULL` constraints protect the database from accepting incomplete club-member records.

