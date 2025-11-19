-- ---------------------------------------
-- 1. Create Table
-- ---------------------------------------
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    admission_date DATE
);

-- ---------------------------------------
-- 2. Insert 4 Patient Data
-- ---------------------------------------
INSERT INTO patients (patient_id, first_name, last_name, age, gender, city, admission_date)
VALUES
(1, 'Amit', 'Sharma', 34, 'Male', 'Delhi', '2025-01-10'),
(2, 'Riya', 'Verma', 28, 'Female', 'Mumbai', '2025-02-15'),
(3, 'John', 'Mathew', 45, 'Male', 'Bangalore', '2025-03-02'),
(4, 'Sneha', 'Reddy', 52, 'Female', 'Chennai', '2025-04-20');

-- ---------------------------------------
-- 3. SELECT Queries
-- ---------------------------------------

-- A. Select all columns
SELECT * FROM patients;

-- B. Select specific columns
SELECT patient_id, first_name, last_name, age, city
FROM patients;

-- ---------------------------------------
-- 4. WHERE Queries
-- ---------------------------------------

-- Patients older than 40
SELECT * FROM patients
WHERE age > 40;

-- Patients from Delhi
SELECT first_name, last_name, city
FROM patients
WHERE city = 'Delhi';

-- ---------------------------------------
-- 5. AND / OR
-- ---------------------------------------

-- Age > 30 AND city = Mumbai
SELECT *
FROM patients
WHERE age > 30 
  AND city = 'Mumbai';

-- Gender = Female OR city = Chennai
SELECT *
FROM patients
WHERE gender = 'Female'
   OR city = 'Chennai';

-- ---------------------------------------
-- 6. LIKE Queries
-- ---------------------------------------

-- First name starting with 'A'
SELECT *
FROM patients
WHERE first_name LIKE 'A%';

-- Last name ending with 'a'
SELECT *
FROM patients
WHERE last_name LIKE '%a';

-- ---------------------------------------
-- 7. BETWEEN
-- ---------------------------------------

-- Age between 20 and 50
SELECT *
FROM patients
WHERE age BETWEEN 20 AND 50;

-- ---------------------------------------
-- 8. ORDER BY
-- ---------------------------------------

-- Order by age ascending
SELECT *
FROM patients
ORDER BY age ASC;

-- Order by admission date descending
SELECT *
FROM patients
ORDER BY admission_date DESC;

-- ---------------------------------------
-- 9. LIMIT
-- ---------------------------------------

-- Show first 2 patients
SELECT *
FROM patients
LIMIT 2;

-- ---------------------------------------
-- 10. Combined Query Example
-- ---------------------------------------

-- Female patients age 25–50 from any city, ordered by age
SELECT patient_id, first_name, last_name, age, city
FROM patients
WHERE gender = 'Female'
  AND age BETWEEN 25 AND 50
ORDER BY age ASC
LIMIT 10;
