CREATE DATABASE Mountain;
USE Mountain;

CREATE TABLE students (
    student_id INT ,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(150),
    gpa DECIMAL(3,2)
);

CREATE TABLE courses (
    course_id INT ,
    course_name VARCHAR(100),
    department VARCHAR(50),
    credits INT,
    semester VARCHAR(10),
    instructor VARCHAR(100),
    room VARCHAR(20),
    schedule VARCHAR(50)
);

CREATE TABLE enrollments (
    enrollment_id INT ,
    student_id INT,
    course_id INT,
    year INT,
    semester VARCHAR(10),
    grade VARCHAR(2),
    attendance_percentage DECIMAL(5,2),
    remarks TEXT
);

INSERT INTO students VALUES
(1, 'Alice', 20, 'Female', 'alice@mail.com', '1234567890', 'Bangalore', 8.5),
(2, 'Bob', 22, 'Male', 'bob@mail.com', '2345678901', 'Mumbai', 7.8),
(3, 'Carol', 21, 'Female', 'carol@mail.com', '3456789012', 'Delhi', 9.1),
(4, 'David', 23, 'Male', 'david@mail.com', '4567890123', 'Chennai', 6.7),
(5, 'Eve', 20, 'Female', 'eve@mail.com', '5678901234', 'Kolkata', 7.2),
(6, 'Frank', 24, 'Male', 'frank@mail.com', '6789012345', 'Hyderabad', 8.0),
(7, 'Grace', 22, 'Female', 'grace@mail.com', '7890123456', 'Pune', 8.3),
(8, 'Heidi', 21, 'Female', 'heidi@mail.com', '8901234567', 'Ahmedabad', 9.0),
(9, 'Ivan', 23, 'Male', 'ivan@mail.com', '9012345678', 'Lucknow', 6.5),
(10, 'Judy', 22, 'Female', 'judy@mail.com', '0123456789', 'Jaipur', 7.6),
(11, 'Ken', 20, 'Male', 'ken@mail.com', '1111111111', 'Patna', 7.9),
(12, 'Laura', 21, 'Female', 'laura@mail.com', '2222222222', 'Surat', 8.1),
(13, 'Mike', 22, 'Male', 'mike@mail.com', '3333333333', 'Indore', 6.8),
(14, 'Nina', 23, 'Female', 'nina@mail.com', '4444444444', 'Nagpur', 7.3),
(15, 'Oscar', 24, 'Male', 'oscar@mail.com', '5555555555', 'Bhopal', 8.6),
(16, 'Pam', 22, 'Female', 'pam@mail.com', '6666666666', 'Visakhapatnam', 8.4),
(17, 'Quinn', 21, 'Female', 'quinn@mail.com', '7777777777', 'Vijayawada', 9.2),
(18, 'Ray', 22, 'Male', 'ray@mail.com', '8888888888', 'Thane', 7.5),
(19, 'Sara', 23, 'Female', 'sara@mail.com', '9999999999', 'Nashik', 6.9),
(20, 'Tom', 24, 'Male', 'tom@mail.com', '1010101010', 'Mysore', 8.7);

INSERT INTO courses VALUES
(101, 'DBMS', 'CSE', 4, 'Spring', 'Dr. Rao', '201', 'MWF 10-11'),
(102, 'OS', 'CSE', 4, 'Fall', 'Dr. Kumar', '202', 'TTh 2-3:30'),
(103, 'Maths', 'Math', 3, 'Spring', 'Dr. Sharma', '203', 'MWF 12-1'),
(104, 'Physics', 'Science', 4, 'Fall', 'Dr. Verma', '204', 'TTh 9-10'),
(105, 'Chemistry', 'Science', 3, 'Spring', 'Dr. Mehta', '205', 'MWF 8-9'),
(106, 'English', 'Arts', 2, 'Fall', 'Dr. Das', '206', 'MWF 11-12'),
(107, 'Economics', 'Arts', 3, 'Spring', 'Dr. Jain', '207', 'TTh 11-12'),
(108, 'Biology', 'Science', 4, 'Fall', 'Dr. Nair', '208', 'MWF 2-3'),
(109, 'Java', 'CSE', 4, 'Spring', 'Dr. Patel', '209', 'TTh 3-4'),
(110, 'Python', 'CSE', 4, 'Fall', 'Dr. Bhat', '210', 'MWF 1-2'),
(111, 'AI', 'CSE', 4, 'Spring', 'Dr. Singh', '211', 'MWF 9-10'),
(112, 'ML', 'CSE', 4, 'Fall', 'Dr. Roy', '212', 'TTh 1-2'),
(113, 'Statistics', 'Math', 3, 'Spring', 'Dr. Pillai', '213', 'MWF 10-11'),
(114, 'Ethics', 'Arts', 2, 'Fall', 'Dr. Tripathi', '214', 'TTh 12-1'),
(115, 'Cloud', 'CSE', 4, 'Spring', 'Dr. Rao', '215', 'MWF 4-5'),
(116, 'Networks', 'CSE', 4, 'Fall', 'Dr. Kapoor', '216', 'TTh 9-10'),
(117, 'Web Dev', 'CSE', 3, 'Spring', 'Dr. Iyer', '217', 'MWF 11-12'),
(118, 'DSA', 'CSE', 4, 'Fall', 'Dr. Reddy', '218', 'TTh 10-11'),
(119, 'Big Data', 'CSE', 3, 'Spring', 'Dr. Yadav', '219', 'MWF 1-2'),
(120, 'Data Mining', 'CSE', 3, 'Fall', 'Dr. Mishra', '220', 'TTh 2-3');

INSERT INTO enrollments VALUES
(1, 1, 101, 2024, 'Spring', 'A', 92.5, 'Excellent'),
(2, 2, 101, 2024, 'Spring', 'B+', 85.0, 'Good'),
(3, 3, 102, 2024, 'Fall', 'A-', 88.2, 'Very Good'),
(4, 4, 103, 2024, 'Spring', 'B', 76.5, 'Good'),
(5, 5, 104, 2024, 'Fall', 'C+', 67.0, 'Average'),
(6, 6, 105, 2024, 'Spring', 'A', 91.2, 'Excellent'),
(7, 7, 106, 2024, 'Fall', 'B+', 82.4, 'Good'),
(8, 8, 107, 2024, 'Spring', 'A-', 87.1, 'Very Good'),
(9, 9, 108, 2024, 'Fall', 'C', 65.3, 'Average'),
(10, 10, 109, 2024, 'Spring', 'B', 79.5, 'Good'),
(11, 11, 110, 2024, 'Fall', 'A', 90.0, 'Excellent'),
(12, 12, 111, 2024, 'Spring', 'B+', 83.6, 'Good'),
(13, 13, 112, 2024, 'Fall', 'A-', 88.0, 'Very Good'),
(14, 14, 113, 2024, 'Spring', 'B', 77.2, 'Good'),
(15, 15, 114, 2024, 'Fall', 'C+', 66.5, 'Average'),
(16, 16, 115, 2024, 'Spring', 'A', 94.3, 'Excellent'),
(17, 17, 116, 2024, 'Fall', 'B+', 81.0, 'Good'),
(18, 18, 117, 2024, 'Spring', 'A-', 86.4, 'Very Good'),
(19, 19, 118, 2024, 'Fall', 'C', 64.9, 'Poor'),
(20, 20, 119, 2024, 'Spring', 'B', 78.5, 'Good');

UPDATE students SET gpa = 9.5 WHERE student_id = 1;
UPDATE students SET address = 'Updated Bangalore' WHERE student_id = 2;
UPDATE students SET phone = '1122334455' WHERE student_id = 3;
UPDATE students SET gpa = 7.0 WHERE student_id = 4;
UPDATE students SET name = 'Eva' WHERE student_id = 5;
UPDATE students SET gpa = 8.8 WHERE student_id = 6;
UPDATE students SET email = 'grace_updated@mail.com' WHERE student_id = 7;
UPDATE students SET address = 'Updated Pune' WHERE student_id = 8;
UPDATE students SET gpa = 7.7 WHERE student_id = 9;
UPDATE students SET phone = '9876543210' WHERE student_id = 10;

UPDATE courses SET instructor = 'Dr. Updated Rao' WHERE course_id = 101;
UPDATE courses SET room = '301' WHERE course_id = 102;
UPDATE courses SET schedule = 'MWF 2-3' WHERE course_id = 103;
UPDATE courses SET credits = 5 WHERE course_id = 104;
UPDATE courses SET instructor = 'Dr. Updated Mehta' WHERE course_id = 105;
UPDATE courses SET department = 'Literature' WHERE course_id = 106;
UPDATE courses SET room = '401' WHERE course_id = 107;
UPDATE courses SET semester = 'Winter' WHERE course_id = 108;
UPDATE courses SET course_name = 'Advanced Java' WHERE course_id = 109;
UPDATE courses SET instructor = 'Dr. Patel Updated' WHERE course_id = 110;

UPDATE enrollments SET grade = 'A+' WHERE enrollment_id = 1;
UPDATE enrollments SET attendance_percentage = 97.0 WHERE enrollment_id = 2;
UPDATE enrollments SET remarks = 'Improved' WHERE enrollment_id = 3;
UPDATE enrollments SET grade = 'B+' WHERE enrollment_id = 4;
UPDATE enrollments SET grade = 'B' WHERE enrollment_id = 5;
UPDATE enrollments SET attendance_percentage = 89.0 WHERE enrollment_id = 6;
UPDATE enrollments SET remarks = 'Excellent progress' WHERE enrollment_id = 7;
UPDATE enrollments SET grade = 'A' WHERE enrollment_id = 8;
UPDATE enrollments SET grade = 'C+' WHERE enrollment_id = 9;
UPDATE enrollments SET attendance_percentage = 92.3 WHERE enrollment_id = 10;

DELETE FROM students WHERE gpa < 6.5;
DELETE FROM students WHERE age BETWEEN 18 AND 19;
DELETE FROM students WHERE student_id IN (15, 16);
DELETE FROM students WHERE student_id NOT IN (1, 2, 3);
DELETE FROM students WHERE gpa NOT BETWEEN 7 AND 9;

SELECT * FROM students WHERE gender = 'Female';
SELECT * FROM students WHERE age > 20 AND gpa > 8.0;
SELECT * FROM students WHERE gpa NOT BETWEEN 7 AND 9;

UPDATE students SET address = 'Updated City' WHERE gpa NOT BETWEEN 7 AND 10;
UPDATE courses SET instructor = 'New Faculty' WHERE course_id NOT IN (101, 102);
UPDATE enrollments SET grade = 'A' WHERE attendance_percentage BETWEEN 90 AND 100 AND grade != 'A';

SELECT gender, AVG(gpa) AS avg_gpa
FROM students
GROUP BY gender;

SELECT age, COUNT(*) AS student_count
FROM students
GROUP BY age;

SELECT department, COUNT(*) AS course_count
FROM courses
GROUP BY department;

SELECT grade, AVG(attendance_percentage) AS avg_attendance
FROM enrollments
GROUP BY grade;

SELECT gpa, COUNT(*) AS student_count
FROM students
GROUP BY gpa
HAVING COUNT(*) >= 2;

SELECT age, AVG(gpa) AS avg_gpa
FROM students
GROUP BY age
HAVING AVG(gpa) > 7.5;

SELECT instructor, COUNT(*) AS total_courses
FROM courses
GROUP BY instructor
HAVING COUNT(*) >= 2;

SELECT grade, MAX(attendance_percentage) AS max_attendance
FROM enrollments
GROUP BY grade;

SELECT address, COUNT(*) AS student_count
FROM students
GROUP BY address;
