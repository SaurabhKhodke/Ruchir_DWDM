CREATE DATABASE IF NOT EXISTS student_enrollment_1;
USE student_enrollment_1;

CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    gpa FLOAT,
    test_score INT,
    preferred_subjects VARCHAR(255),
    previous_enrollments INT,
    age INT,
    gender VARCHAR(10),
    location VARCHAR(255),
    extracurricular_activities VARCHAR(255),
    career_goals VARCHAR(255),
    enrollment INT
);

INSERT INTO students (gpa, test_score, preferred_subjects, previous_enrollments, age, gender, location, extracurricular_activities, career_goals, enrollment)
VALUES
(3.8, 85, 'Mathematics', 2, 20, 'Male', 'New York', 'Basketball', 'Data Scientist', 1),
(3.2, 78, 'Physics', 1, 22, 'Female', 'California', 'Chess', 'Engineer', 0),
(3.6, 90, 'Biology', 0, 21, 'Male', 'Texas', 'Soccer', 'Doctor', 1),
(2.9, 65, 'Chemistry', 3, 23, 'Female', 'Florida', 'Music', 'Nurse', 0),
(3.4, 72, 'Mathematics', 2, 19, 'Male', 'New York', 'Debate', 'Teacher', 1),
(3.1, 70, 'Physics', 1, 20, 'Female', 'California', 'Drama', 'Scientist', 0),
(3.5, 88, 'Computer Science', 0, 18, 'Male', 'Washington', 'Robotics', 'Software Engineer', 1),
(3.0, 66, 'History', 2, 22, 'Female', 'Georgia', 'Writing', 'Historian', 0),
(3.9, 92, 'Mathematics', 0, 21, 'Male', 'Illinois', 'Basketball', 'Data Analyst', 1),
(2.7, 60, 'Chemistry', 4, 24, 'Female', 'Nevada', 'Painting', 'Pharmacist', 0),
(3.6, 81, 'Biology', 1, 20, 'Male', 'Texas', 'Soccer', 'Biologist', 1),
(3.4, 77, 'Mathematics', 1, 19, 'Female', 'New York', 'Science Club', 'Teacher', 0),
(3.3, 75, 'Physics', 1, 21, 'Male', 'Florida', 'Debate', 'Engineer', 1),
(3.7, 89, 'Computer Science', 0, 18, 'Female', 'Washington', 'Coding', 'Programmer', 1),
(2.8, 62, 'History', 3, 22, 'Male', 'Georgia', 'Chess', 'Researcher', 0),
(3.2, 83, 'Biology', 1, 20, 'Female', 'Texas', 'Music', 'Nurse', 1),
(3.0, 68, 'Physics', 2, 22, 'Male', 'California', 'Drama', 'Scientist', 0),
(3.5, 86, 'Mathematics', 1, 19, 'Female', 'Illinois', 'Soccer', 'Data Scientist', 1),
(2.9, 71, 'Chemistry', 3, 23, 'Male', 'New York', 'Chess', 'Pharmacist', 0),
(3.8, 90, 'Physics', 0, 18, 'Female', 'California', 'Robotics', 'Engineer', 1),
(3.6, 85, 'Mathematics', 2, 20, 'Male', 'Texas', 'Basketball', 'Statistician', 1),
(3.1, 74, 'Biology', 2, 22, 'Female', 'Florida', 'Music', 'Doctor', 0),
(3.7, 91, 'Computer Science', 0, 19, 'Male', 'Washington', 'Coding', 'Software Developer', 1),
(2.8, 61, 'History', 3, 24, 'Female', 'Georgia', 'Painting', 'Historian', 0),
(3.3, 80, 'Chemistry', 1, 21, 'Male', 'New York', 'Debate', 'Chemist', 1),
(3.4, 76, 'Physics', 1, 20, 'Female', 'California', 'Science Club', 'Engineer', 0),
(3.0, 67, 'Biology', 3, 23, 'Male', 'Texas', 'Drama', 'Scientist', 0),
(3.9, 93, 'Mathematics', 0, 18, 'Female', 'Illinois', 'Basketball', 'Data Scientist', 1),
(3.6, 84, 'Physics', 1, 19, 'Male', 'New York', 'Robotics', 'Engineer', 1),
(3.2, 72, 'Chemistry', 2, 22, 'Female', 'California', 'Music', 'Pharmacist', 0),
(3.1, 69, 'History', 4, 21, 'Male', 'Texas', 'Writing', 'Historian', 0),
(3.7, 88, 'Computer Science', 0, 20, 'Female', 'Washington', 'Coding', 'Programmer', 1),
(3.5, 79, 'Biology', 2, 19, 'Male', 'Florida', 'Soccer', 'Doctor', 1),
(3.0, 63, 'Physics', 2, 23, 'Female', 'New York', 'Science Club', 'Researcher', 0),
(3.4, 82, 'Chemistry', 1, 22, 'Male', 'California', 'Drama', 'Chemist', 1),
(2.9, 65, 'Mathematics', 3, 24, 'Female', 'Georgia', 'Debate', 'Statistician', 0),
(3.8, 87, 'Physics', 0, 20, 'Male', 'New York', 'Basketball', 'Engineer', 1),
(3.3, 74, 'Biology', 2, 21, 'Female', 'Texas', 'Music', 'Nurse', 0),
(3.2, 68, 'Computer Science', 1, 23, 'Male', 'Illinois', 'Robotics', 'Software Engineer', 1),
(3.6, 85, 'Mathematics', 0, 18, 'Female', 'California', 'Coding', 'Data Analyst', 1),
(2.7, 59, 'Chemistry', 4, 24, 'Male', 'Florida', 'Painting', 'Pharmacist', 0),
(3.5, 90, 'Physics', 0, 19, 'Female', 'Washington', 'Soccer', 'Engineer', 1),
(3.9, 92, 'Biology', 1, 21, 'Male', 'Georgia', 'Debate', 'Doctor', 1),
(3.0, 66, 'History', 3, 22, 'Female', 'California', 'Drama', 'Researcher', 0),
(3.7, 88, 'Computer Science', 0, 18, 'Male', 'New York', 'Coding', 'Software Developer', 1),
(3.4, 75, 'Mathematics', 1, 23, 'Female', 'Texas', 'Basketball', 'Statistician', 1),
(3.1, 69, 'Physics', 2, 20, 'Male', 'California', 'Science Club', 'Engineer', 0),
(3.8, 86, 'Biology', 0, 19, 'Female', 'Florida', 'Music', 'Biologist', 1),
(3.6, 83, 'Computer Science', 1, 22, 'Male', 'Washington', 'Robotics', 'Software Engineer', 1),
(2.9, 64, 'Chemistry', 3, 24, 'Female', 'Illinois', 'Painting', 'Pharmacist', 0),
(3.5, 81, 'History', 2, 21, 'Male', 'Georgia', 'Debate', 'Historian', 1),
(3.2, 78, 'Mathematics', 1, 20, 'Female', 'New York', 'Science Club', 'Teacher', 0),
(3.3, 76, 'Physics', 1, 19, 'Male', 'California', 'Soccer', 'Engineer', 1),
(3.7, 89, 'Computer Science', 0, 18, 'Female', 'Texas', 'Robotics', 'Programmer', 1),
(2.8, 62, 'History', 3, 23, 'Male', 'Florida', 'Chess', 'Researcher', 0),
(3.1, 73, 'Biology', 2, 22, 'Female', 'Washington', 'Drama', 'Doctor', 0),
(3.9, 94, 'Mathematics', 0, 21, 'Male', 'Georgia', 'Basketball', 'Data Analyst', 1),
(3.6, 84, 'Physics', 1, 20, 'Female', 'New York', 'Music', 'Engineer', 1),
(3.4, 77, 'Chemistry', 1, 22, 'Male', 'California', 'Debate', 'Chemist', 1),
(3.0, 67, 'Biology', 3, 24, 'Female', 'Illinois', 'Science Club', 'Biologist', 0),
(3.8, 89, 'Computer Science', 0, 19, 'Male', 'Texas', 'Coding', 'Software Developer', 1),
(3.5, 80, 'Mathematics', 2, 23, 'Female', 'Florida', 'Basketball', 'Statistician', 1),
(3.2, 71, 'Physics', 2, 18, 'Male', 'Georgia', 'Soccer', 'Engineer', 0);
