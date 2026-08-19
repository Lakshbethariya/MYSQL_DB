CREATE DATABASE university;
USE university;

CREATE TABLE departments (
	department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
    );

INSERT INTO departments (department_name)
VALUES
('Computer Science'),
('Mechanical Engineering'),
('Electrical Engineering'),
('Civil Engineering'),
('Information Technology'),
('Electronics Engineering'),
('Chemical Engineering'),
('Biotechnology'),
('Aerospace Engineering'),
('Artificial Intelligence');

CREATE TABLE students (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR (100) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE,
    department_id INT,
    
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
    );

INSERT INTO students
(student_name, age, email, department_id)
VALUES
('Rahul Sharma', 20, 'rahul@gmail.com', 1),
('Priya Patil', 21, 'priya@gmail.com', 1),
('Arjun Mehta', 19, 'arjun@gmail.com', 2),
('Sneha Kulkarni', 22, 'sneha@gmail.com', 3),
('Aman Joshi', 20, 'aman@gmail.com', 5),
('Neha Singh', 21, 'neha@gmail.com', 4),
('Rohan Deshmukh', 23, 'rohan@gmail.com', 1),
('Ananya Shah', 19, 'ananya@gmail.com', 6),
('Karan Verma', 22, 'karan@gmail.com', 2),
('Isha Gupta', 20, 'isha@gmail.com', 5),
('Vikram Rao', 24, 'vikram@gmail.com', 7),
('Pooja Nair', 21, 'pooja@gmail.com', 8),
('Aditya Jain', 20, 'aditya@gmail.com', 10),
('Meera Iyer', 22, 'meera@gmail.com', 9),
('Sahil Khan', 19, 'sahil@gmail.com', 1);

