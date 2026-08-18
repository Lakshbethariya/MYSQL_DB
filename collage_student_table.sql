USE collage;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

INSERT INTO students (name, age, email)
VALUES
('Rahul', 20, 'rahul@gmail.com'),
('Priya', 21, 'priya@gmail.com'),
('amar', 21, 'amar@gmail.com'),
('Amit', 19, 'amit@gmail.com');

SELECT*  FROM students;


SELECT NAME,EMAIL FROM students;


SELECT * FROM students
WHERE age>=20;

SELECT * FROM students
WHERE email = 'priya@gmail.com';

SELECT * FROM students
WHERE age>19 AND email='rahul@gmail.com';

SELECT * FROM students
WHERE age=19 OR age=21;

SELECT * FROM students
WHERE age >= 20
AND (name = 'Rahul' OR name = 'Priya');