CREATE DATABASE patient_dashboard;
USE patient_dashboard;
-- Patients table
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10)
);

-- Appointments table
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    department VARCHAR(50),
    appointment_date DATE,
    status VARCHAR(20)
);

-- Waitlist table
CREATE TABLE waitlist (
    waitlist_id INT PRIMARY KEY,
    patient_id INT,
    service_type VARCHAR(100),
    request_date DATE,
    urgency_level INT
);
-- Patients
INSERT INTO patients VALUES
(1, 'John Doe', 45, 'Male'),
(2, 'Jane Smith', 34, 'Female'),
(3, 'Alice Johnson', 29, 'Female'),
(4, 'Bob Lee', 58, 'Male'),
(5, 'Emily Davis', 63, 'Female');

-- Waitlist
INSERT INTO waitlist VALUES
(101, 1, 'Cardiology', '2025-06-01', 3),
(102, 2, 'Neurology', '2025-06-10', 2),
(103, 3, 'Orthopedics', '2025-06-15', 4),
(104, 4, 'Oncology', '2025-05-20', 5),
(105, 5, 'Dermatology', '2025-06-05', 1);

-- Appointments
INSERT INTO appointments VALUES
(1001, 1, 'Cardiology', NULL, 'Pending'),
(1002, 2, 'Neurology', '2025-07-01', 'Scheduled'),
(1003, 3, 'Orthopedics', NULL, 'Pending'),
(1004, 4, 'Oncology', NULL, 'Pending'),
(1005, 5, 'Dermatology', '2025-07-10', 'Scheduled');
SELECT 
    p.patient_id,
    p.name,
    p.age,
    p.gender,
    w.service_type,
    w.request_date,
    w.urgency_level,
    a.appointment_date,
    a.status
FROM waitlist w
JOIN patients p ON w.patient_id = p.patient_id
LEFT JOIN appointments a ON p.patient_id = a.patient_id;
