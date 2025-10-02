-- Step 1: Create Hospital Database
CREATE DATABASE HospitalDB;
USE HospitalDB;
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50),
    disease VARCHAR(50),
    age INT
);
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(50),
    specialization VARCHAR(50),
    phone VARCHAR(15)
);
INSERT INTO Patients (patient_id, name, disease, age)
VALUES
(1, 'Talha', 'flue', 19),
(2, 'Arslan', 'Pneumonia', 49),
(3, 'ali', 'Asthma', 25),
(4, 'kashif', 'Diabetes', 11),
(5, 'Ali', 'Cancer', 43);
INSERT INTO Doctors (doctor_id, name, specialization, phone)
VALUES
(1, 'Dr.zanib', 'Cardiologist', '123-456-7890'),
(2, 'Dr. Aina', 'Neurologist', '987-654-3210'),
(3, 'Dr. Esha', 'Orthopedic', '555-123-4567');
SELECT * FROM Patients;
SELECT * FROM Doctors;
