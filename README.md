# University Course Registration and Department Management System

Group members: **Bishnu Bahadur GC and Swastika Poudel**  
CIT 406: Database Design · Atlantis University · Fall 2026

The eight tables implement the normalized project ERD. To rebuild in a fresh Supabase project, open **SQL Editor**, run `schema.sql`, then run `seed.sql`. Open **Database → Schema Visualizer**, select `public`, arrange all eight tables and capture a screenshot that shows the foreign key lines. The seed uses fictional records. These files are intended for a fresh database; rerunning the seed in the same database will produce duplicate primary key errors.

## Referential actions and business rules

All foreign keys use `ON UPDATE CASCADE` so an exceptional correction to a parent identifier updates its references. All use `ON DELETE RESTRICT` because deleting an academic record must not silently erase connected history. Reassign or explicitly handle dependent records before deleting a parent. The specific choices are:

| Foreign key | Delete rule | Business reason |
| --- | --- | --- |
| `student.department_id → department.department_id` | RESTRICT | A department with assigned students cannot be removed until they are reassigned. |
| `instructor.department_id → department.department_id` | RESTRICT | Staff assignments must be resolved before removing the department. |
| `course.department_id → department.department_id` | RESTRICT | A department cannot disappear while its courses still exist. |
| `section.course_id → course.course_id` | RESTRICT | Sections must retain their course identity. |
| `section.instructor_id → instructor.instructor_id` | RESTRICT | Teaching assignments must be reassigned before an instructor record is deleted. |
| `section.semester_id → semester.semester_id` | RESTRICT | A semester with scheduled sections remains available for academic records. |
| `section.classroom_id → classroom.classroom_id` | RESTRICT | Move scheduled sections before removing a classroom. |
| `enrollment.student_id → student.student_id` | RESTRICT | Removing a student must not silently erase enrollment history. |
| `enrollment.section_id → section.section_id` | RESTRICT | Removing a section must not silently erase its enrollment history. |

This is a database rebuild, not an account deployment receipt. A submission screenshot must be taken from the actual Supabase project after running these files.
