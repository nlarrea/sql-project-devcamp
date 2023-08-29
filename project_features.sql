USE university_project_schema;

-- The average grade that is given by each professor
SELECT
p.professors_name,
AVG(g.grades_grade) AS 'Given average grade'
FROM grades g
JOIN professors p ON g.grades_professors_id = p.professors_id
GROUP BY g.grades_professors_id;


-- The top grades for each student
SELECT
s.students_name,
MAX(g.grades_grade) AS top_grade
FROM grades g
JOIN students s ON g.grades_students_id = s.students_id
GROUP BY g.grades_students_id;


-- Sort students by the courses that they are enrolled in
SELECT
s.students_name,
c.courses_id,
c.courses_name
FROM grades g
JOIN students s ON g.grades_students_id = s.students_id
JOIN courses c ON g.grades_courses_id = c.courses_id
ORDER BY g.grades_courses_id ASC;


-- Summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course
SELECT
c.courses_name,
AVG(g.grades_grade) AS grade_average
FROM grades g
JOIN courses c ON g.grades_courses_id = c.courses_id
GROUP BY g.grades_courses_id
ORDER BY grade_average ASC;


-- Finding which student and professor have the most courses in common
SELECT
s.students_name,
p.professors_name,
COUNT(DISTINCT c.courses_id) AS courses_in_common
FROM grades g
JOIN students s ON g.grades_students_id = s.students_id
JOIN professors p ON g.grades_professors_id = p.professors_id
JOIN courses c ON g.grades_courses_id = c.courses_id
GROUP BY s.students_name, p.professors_name
ORDER BY courses_in_common DESC
LIMIT 5;	-- Select the first 5 from the returned list