USE university_project_schema;

INSERT INTO courses(courses_name)
VALUES
	('Analog Electronics'),					-- id 1
    ('Digital Electronics'),				-- id 2
    ('Industrial Computing'),				-- id 3
    ('Automatic Regulation'),				-- id 4
    ('Electronic Technology');				-- id 5


INSERT INTO students(students_name, students_email)
VALUES
	('Student1', 'student1@test.com'),		-- courses 1, 2
    ('Student2', 'student2@test.com'),		-- courses 4, 5
    ('Student3', 'student3@test.com'),		-- courses 2, 3
    ('Student4', 'student4@test.com'),		-- courses 1, 2
    ('Student5', 'student5@test.com'),		-- courses 5, 1
    ('Student6', 'student6@test.com'),		-- courses 3, 4
    ('Student7', 'student7@test.com'),		-- courses 1, 2
    ('Student8', 'student8@test.com'),		-- courses 1, 2
    ('Student9', 'student9@test.com'),		-- courses 5, 1
    ('Student10', 'student10@test.com');	-- courses 3, 4
    

INSERT INTO professors(professors_name, professors_email)
VALUES
	('Professor1', 'professor1@test.com'),	-- courses 1, 5
    ('Professor2', 'professor2@test.com'),	-- courses 2, 4
    ('Professor3', 'professor3@test.com');	-- courses 3


INSERT INTO grades(grades_courses_id, grades_students_id, grades_professors_id, grades_grade)
VALUES
	(1, 1, 1, 5.0),
    (1, 4, 1, 4.9),
    (1, 5, 1, 5.5),
    (1, 7, 1, 9.0),
    (1, 8, 1, 3.2),
    (1, 9, 1, 7.8),
    (2, 1, 2, 9.0),
    (2, 3, 2, 6.7),
    (2, 4, 2, 8.6),
    (2, 7, 2, 5.0),
    (2, 8, 2, 7.3),
    (3, 3, 3, 10.0),
    (3, 6, 3, 9.8),
    (3, 10, 3, 8.4),
    (4, 2, 2, 5.2),
    (4, 6, 2, 7.6),
    (4, 10, 2, 7.7),
    (5, 2, 1, 4.3),
    (5, 5, 1, 5.6),
    (5, 9, 1, 7.7);