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

