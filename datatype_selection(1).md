# CIT 406: Database Design
## Module 1 – Assignment 2: Data Type Selection & First Schema Build

**Student:** Bishnu Bahadur GC  
**University:** Atlantis University  
**Term:** Fall A 2026  
**Task 1:** PostgreSQL Data Type Selection Exercise

| # | Column | PostgreSQL Data Type | Justification |
|---|---|---|---|
| 1 | `student_id` | `INTEGER GENERATED ALWAYS AS IDENTITY` | An identity integer automatically generates a new sequential numeric ID for each student. |
| 2 | `first_name` | `VARCHAR(50)` | A variable-length field with a 50-character limit is sufficient for most first names. |
| 3 | `email_address` | `VARCHAR(254)` | Email addresses contain letters and symbols, and 254 characters supports standard email lengths. |
| 4 | `date_of_birth` | `DATE` | The DATE type stores the birthday without an unnecessary time value. |
| 5 | `account_balance` | `NUMERIC(10,2)` | NUMERIC stores money amounts exactly with two digits after the decimal point. |
| 6 | `is_active` | `BOOLEAN` | BOOLEAN is appropriate because the account has only active or inactive states. |
| 7 | `event_start` | `TIMESTAMPTZ` | A timestamp with time zone records the exact event time correctly for users in different time zones. |
| 8 | `event_description` | `TEXT` | TEXT allows descriptions of varying length, including multiple paragraphs, without a fixed limit. |
| 9 | `maximum_attendees` | `INTEGER` | INTEGER stores a whole-number attendance limit because partial attendees are not possible. |
| 10 | `student_attended` | `BOOLEAN` | BOOLEAN directly represents the two Yes/No attendance states. |
| 11 | `phone_number` | `VARCHAR(25)` | Phone numbers should be stored as text so formatting symbols and a leading plus sign are preserved. |
| 12 | `postal_code` | `VARCHAR(10)` | Postal codes are identifiers rather than quantities, so text preserves leading zeros and permits extended formats. |
| 13 | `event_status` | `VARCHAR(30)` | VARCHAR supports the current status words and allows additional status values to be added later. |
| 14 | `student_number` | `CHAR(6)` | CHAR(6) preserves the fixed six-character value and keeps leading zeros such as 001245. |

