-- Create the collage database
CREATE DATABASE collage;

-- determines to set as default database to use for the current session.
USE collage;

-- Create the students table with columns for student_id, name, age, and email. 
-- The student_id is set as the primary key and will auto-increment with each new entry.
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

-- Insert sample data into the students table with names, ages, and email addresses.
INSERT INTO students (name, age, email)
VALUES
('Rahul', 20, 'rahul@gmail.com'),
('Priya', 21, 'priya@gmail.com'),
('amar', 21, 'amar@gmail.com'),
('Amit', 19, 'amit@gmail.com');

-- Query to retrieve all records from the students table.
SELECT*  FROM students;


-- Query to retrieve only the name and email columns from the students table.
SELECT NAME,EMAIL FROM students;

-- Query to retrieve records of students who are at least 20 years old.
SELECT * FROM students
WHERE age>=20;

-- Query to retrieve records of students with a specific email.
SELECT * FROM students
WHERE email = 'priya@gmail.com';

-- Query to retrieve records of students who are older than 19 and have a specific email.
SELECT * FROM students
WHERE age>19 AND email='rahul@gmail.com';

-- Query to retrieve records of students who are either 19 or 21 years old.
SELECT * FROM students
WHERE age=19 OR age=21;

-- Query to retrieve records of students who are at least 20 years old and have a specific name.
SELECT * FROM students
WHERE age >= 20
AND (name = 'Rahul' OR name = 'Priya');

-- Query to retrieve records of students ordered by age.
SELECT * FROM students
ORDER BY age;

-- Query to retrieve records of students ordered by age in descending order.
SELECT * FROM students
ORDER BY age DESC;

-- Show only the students who are at least 20 years old, and display them from oldest to youngest.
SELECT * FROM students
WHERE age>=20  
ORDER BY age DESC;

-- Show me the 2 oldest students only with LIMIT keyword.
SELECT * FROM students
ORDER BY age DESC
LIMIT 2;

-- Rahul's age was entered incorrectly. His age is actually 21. use UPDATE and SET keyword.
UPDATE students
SET age=21
WHERE student_id=1;
SELECT * from students;

-- Delete the record of the student with student_id 3 from the students table.
DELETE FROM students
WHERE student_id = 3;
SELECT * FROM students;

-- Query to retrieve records of students whose age is between 20 and 22.
SELECT * FROM students
WHERE age BETWEEN 20 AND 22;

-- Calculate the average age of students.
SELECT AVG(age)
FROM students;

-- Calculate the total number of students in the table.
SELECT COUNT(age)
FROM students;

-- Calculate the sum of ages of all students.
SELECT SUM(age)  
FROM students;

-- Calculate the minimum and  ages of students in the table.
SELECT MIN(age)  
FROM students;

-- Calculate the maximum age of students in the table.
SELECT MAX(age)  
FROM students;