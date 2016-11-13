-- SELECT ALL
select * from students;

-- SELECT particular columns
select name, email from students;

-- SELECT DISTINCT values
select student_id from grades;
select distinct student_id from grades;

-- WHERE CLAUSE
select * from students where id = 123;
select * from students where name = "Ralph";

-- MULTIPLE WHERE CLAUSES
select * from grades;
select * from grades where student_id = 404;
select * from grades where student_id = 404 and grade = 'B';

-- LIKE OPERATOR
select * from students where name like 'L%';
select * from students where name like '%h';
select * from students where name like '%hou%';

-- ORDER BY
select * from grades order by grade asc;
select * from grades order by grade desc;

-- INSERTING ROWS
insert into students VALUES(241, 'Tom', 'tom@example.com', 'awesome');
insert into students (id, name, email, password) VALUES(689, 'Mary', 'mary.jane@test.com', 'password123');

-- UPDATING ROWS
UPDATE students SET password = 't3st1ng' WHERE id = 689;
UPDATE students SET name="Claire", password = '73veNtY1' WHERE id = 689;

-- DELETE ROW
DELETE FROM students; -- would delete all rows
DELETE FROM students where id = 689 AND id = 241; -- specific rows

-- JOINS
SELECT * FROM students JOIN grades;
SELECT * FROM students JOIN grades ON id = student_id;
SELECT name, course_id, grade FROM students JOIN grades ON students.id = student_id;
SELECT name, g.* FROM students s JOIN grades g ON s.id = g.student_id;

-- What courses have been taken by both Bart and Lisa?
SELECT DISTINCT c.name
FROM courses c
     JOIN grades g1 ON g1.course_id = c.id
     JOIN students bart ON g1.student_id = bart.id
     JOIN grades g2 ON g2.course_id = c.id
     JOIN students lisa ON g2.student_id = lisa.id
WHERE bart.name = 'Bart'
      AND lisa.name = 'Lisa';
      
-- What are the names of all teachers Bart has had?
SELECT DISTINCT t.name
FROM teachers t
     JOIN courses c ON c.teacher_id = t.id
     JOIN grades g ON g.course_id = c.id 
     JOIN students s ON s.id = g.student_id
WHERE s.name = 'Bart';

-- How many total students has Ms. Krabappel taught, and what are their names?
SELECT DISTINCT s.name
FROM students s
     JOIN grades g ON s.id = g.student_id
     JOIN courses c ON g.course_id = c.id
     JOIN teachers t ON t.id = c.teacher_id
WHERE t.name = 'Krabappel';