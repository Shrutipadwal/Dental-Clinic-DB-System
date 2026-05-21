-- =========================================
-- BASIC CRUD QUERIES
-- =========================================

SELECT * FROM patients;

SELECT * FROM dentists;

UPDATE patients
SET phone = '9999999999'
WHERE patient_id = 1;

DELETE FROM patients
WHERE patient_id = 3;

-- =========================================
-- JOINS
-- =========================================

-- Patient + Appointment details
SELECT 
    p.name AS patient_name,
    d.name AS dentist_name,
    a.appointment_date,
    a.status
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
JOIN dentists d ON a.dentist_id = d.dentist_id;

-- =========================================
-- INDEX
-- =========================================

CREATE INDEX idx_patient_phone
ON patients(phone);
-- =========================================
-- INDEX ON APPOINTMENT DATE
-- =========================================

CREATE INDEX idx_appointment_date
ON appointments(appointment_date);
SHOW INDEX FROM appointments;

-- =========================================
-- SIMPLE REPORT
-- =========================================

SELECT status, COUNT(*) 
FROM appointments
GROUP BY status;

# List Appointments with Patient Details
SELECT 
    a.appointment_id,
    p.name AS patient_name,
    a.appointment_date,
    a.status
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id;

# List Appointments with Dentist Details
SELECT 
    a.appointment_id,
    d.name AS dentist_name,
    d.specialization,
    a.appointment_date,
    a.status
FROM appointments a
JOIN dentists d ON a.dentist_id = d.dentist_id;

# Count Patients by Gender
SELECT 
    gender,
    COUNT(*) AS total_patients
FROM patients
GROUP BY gender;

# Total Appointments Per Dentist
SELECT 
    d.name AS dentist_name,
    COUNT(a.appointment_id) AS total_appointments
FROM dentists d
JOIN appointments a ON d.dentist_id = a.dentist_id
GROUP BY d.name;

# Find Latest Appointment
SELECT *
FROM appointments
ORDER BY appointment_date DESC
LIMIT 1;

# Patients Who Have Appointments
SELECT DISTINCT
    p.name,
    p.phone
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id;

# Pending Bills Only
SELECT *
FROM billing
WHERE payment_status = 'Pending';

# Total Revenue Earned
SELECT 
    SUM(total_amount) AS total_revenue
FROM billing
WHERE payment_status = 'Paid';

# Appointments on a Specific Date
SELECT *
FROM appointments
WHERE appointment_date = '2026-05-21';

# Patients from a Specific City (Pune example)
SELECT *
FROM patients
WHERE address = 'Pune';

-- =========================================
-- TRIGGER: Auto set appointment status
-- =========================================

DELIMITER //

CREATE TRIGGER set_appointment_status
BEFORE INSERT ON appointments
FOR EACH ROW
BEGIN
    IF NEW.status IS NULL OR NEW.status = '' THEN
        SET NEW.status = 'Scheduled';
    END IF;
END //

DELIMITER ;
SHOW TRIGGERS;
#testing trigger
INSERT INTO appointments (patient_id, dentist_id, appointment_date, status, notes)
VALUES (1, 1, '2026-05-25', NULL, 'Test appointment');
SELECT * FROM appointments;
-- What you should observe
-- Even though you inserted NULL, the trigger will automatically set:
-- status = 'Scheduled'

