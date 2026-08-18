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