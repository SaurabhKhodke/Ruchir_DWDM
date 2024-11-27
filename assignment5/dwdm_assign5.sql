create database DWDM_assig5;

use DWDM_assig5;


CREATE TABLE Dim_Patient (
    Patient_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    DOB DATE,
    Gender VARCHAR(10),
    Address VARCHAR(255),
    Contact_Info VARCHAR(50),
    Insurance_Provider VARCHAR(100),
    Policy_Number VARCHAR(50)
);

CREATE TABLE Dim_Doctor (
    Doctor_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Specialization VARCHAR(100),
    Department VARCHAR(100),
    Contact_Info VARCHAR(50)
);

CREATE TABLE Dim_Service (
    Service_ID INT PRIMARY KEY AUTO_INCREMENT,
    Service_Type VARCHAR(50),
    Room_Number INT,
    Bed_Number INT
);



CREATE TABLE Dim_Medication (
    Medication_ID INT PRIMARY KEY AUTO_INCREMENT,
    Drug_Name VARCHAR(100),
    Dosage VARCHAR(50),
    Frequency VARCHAR(50),
    Start_Date DATE,
    End_Date DATE
);

CREATE TABLE Dim_Date (
    Date_Key INT PRIMARY KEY AUTO_INCREMENT,
    Full_Date DATE,
    Day INT,
    Month INT,
    Year INT
);

CREATE TABLE Fact_Treatment (
    Treatment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Doctor_ID INT,
    Service_ID INT,
    Diagnosis_ID INT,
    Medication_ID INT,
    Date_Key INT,
    Cost DECIMAL(10, 2),
    Insurance_Claim DECIMAL(10, 2),
    Amount_Paid DECIMAL(10, 2),
    FOREIGN KEY (Patient_ID) REFERENCES Dim_Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Dim_Doctor(Doctor_ID),
    FOREIGN KEY (Service_ID) REFERENCES Dim_Service(Service_ID),
    FOREIGN KEY (Medication_ID) REFERENCES Dim_Medication(Medication_ID),
    FOREIGN KEY (Date_Key) REFERENCES Dim_Date(Date_Key)
);


CREATE TABLE Dim_Specialization (
    Specialization_ID INT PRIMARY KEY AUTO_INCREMENT,
    Specialization_Name VARCHAR(100)
);

ALTER TABLE Dim_Doctor 
ADD COLUMN Specialization_ID INT,
ADD FOREIGN KEY (Specialization_ID) REFERENCES Dim_Specialization(Specialization_ID);

CREATE TABLE Fact_Appointment (
    Appointment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Doctor_ID INT,
    Date_Key INT,
    Appointment_Status VARCHAR(50),
    Appointment_Cost DECIMAL(10, 2),
    FOREIGN KEY (Patient_ID) REFERENCES Dim_Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Dim_Doctor(Doctor_ID),
    FOREIGN KEY (Date_Key) REFERENCES Dim_Date(Date_Key)
);



-- Connect Fact_Appointment to Dim_Patient
ALTER TABLE Fact_Appointment 
ADD CONSTRAINT fk_patient FOREIGN KEY (Patient_ID) 
REFERENCES Dim_Patient(Patient_ID);

-- Connect Fact_Appointment to Dim_Doctor
ALTER TABLE Fact_Appointment 
ADD CONSTRAINT fk_doctor FOREIGN KEY (Doctor_ID) 
REFERENCES Dim_Doctor(Doctor_ID);

-- Connect Fact_Appointment to Dim_Date
ALTER TABLE Fact_Appointment 
ADD CONSTRAINT fk_date FOREIGN KEY (Date_Key) 
REFERENCES Dim_Date(Date_Key);

