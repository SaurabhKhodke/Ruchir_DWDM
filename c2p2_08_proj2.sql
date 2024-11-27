CREATE DATABASE student_enrollment_c2p2;
USE student_enrollment_c2p2;

CREATE TABLE students (
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
(3.0, 81, 'Biology', 1, 22, 'Male', 'Alabama', 'Volunteering', 'Nurse', 0),
(3.2, 79, 'Physics', 2, 21, 'Female', 'Alaska', 'Coding Club', 'Researcher', 1),
(3.6, 91, 'Computer Science', 3, 20, 'Male', 'Arizona', 'Robotics', 'Software Engineer', 1),
(3.4, 87, 'Mathematics', 2, 23, 'Female', 'Arkansas', 'Chess', 'Data Analyst', 1),
(2.7, 73, 'History', 1, 24, 'Male', 'California', 'Debate', 'Historian', 0),
(3.5, 84, 'Economics', 2, 22, 'Female', 'Colorado', 'Soccer', 'Economist', 1),
(3.1, 77, 'Chemistry', 1, 21, 'Male', 'Connecticut', 'Basketball', 'Pharmacist', 0),
(3.8, 89, 'Biology', 3, 20, 'Female', 'Delaware', 'Volunteering', 'Doctor', 1),
(3.7, 92, 'Physics', 2, 22, 'Male', 'Florida', 'Coding Club', 'Physicist', 1),
(3.3, 86, 'Mathematics', 1, 23, 'Female', 'Georgia', 'Robotics', 'Statistician', 1),
(3.0, 78, 'History', 1, 24, 'Male', 'Hawaii', 'Theater', 'Teacher', 0),
(3.4, 80, 'Economics', 2, 22, 'Female', 'Idaho', 'Soccer', 'Economist', 1),
(3.2, 76, 'Biology', 1, 21, 'Male', 'Illinois', 'Swimming', 'Nurse', 0),
(3.9, 93, 'Physics', 3, 20, 'Female', 'Indiana', 'Robotics', 'Researcher', 1),
(3.6, 88, 'Computer Science', 2, 23, 'Male', 'Iowa', 'Coding Club', 'Software Engineer', 1),
(3.7, 91, 'Mathematics', 1, 22, 'Female', 'Kansas', 'Chess', 'Data Analyst', 1),
(3.3, 79, 'History', 1, 24, 'Male', 'Kentucky', 'Debate', 'Historian', 0),
(3.5, 82, 'Economics', 2, 21, 'Female', 'Louisiana', 'Soccer', 'Economist', 1),
(3.4, 83, 'Biology', 1, 22, 'Male', 'Maine', 'Volunteering', 'Doctor', 0),
(3.8, 90, 'Physics', 3, 20, 'Female', 'Maryland', 'Robotics', 'Physicist', 1),
(3.2, 78, 'Chemistry', 2, 23, 'Male', 'Massachusetts', 'Basketball', 'Pharmacist', 0),
(3.6, 87, 'Mathematics', 1, 21, 'Female', 'Michigan', 'Coding Club', 'Statistician', 1),
(3.0, 75, 'History', 1, 24, 'Male', 'Minnesota', 'Theater', 'Teacher', 0),
(3.1, 81, 'Economics', 2, 22, 'Female', 'Mississippi', 'Soccer', 'Economist', 1),
(3.9, 94, 'Biology', 1, 20, 'Male', 'Missouri', 'Swimming', 'Nurse', 1),
(3.8, 92, 'Physics', 3, 22, 'Female', 'Montana', 'Robotics', 'Researcher', 1),
(3.6, 89, 'Computer Science', 2, 23, 'Male', 'Nebraska', 'Coding Club', 'Software Engineer', 1),
(3.5, 86, 'Mathematics', 1, 21, 'Female', 'Nevada', 'Chess', 'Data Analyst', 1),
(3.1, 76, 'History', 1, 24, 'Male', 'New Hampshire', 'Debate', 'Historian', 0),
(3.4, 80, 'Economics', 2, 22, 'Female', 'New Jersey', 'Soccer', 'Economist', 1);


select * from students;
