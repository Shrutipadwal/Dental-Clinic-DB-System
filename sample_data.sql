-- PATIENTS DATA
INSERT INTO patients(name, age, gender, phone, address)
VALUES
('Amit Sharma', 30, 'Male', '9876500011', 'Pune'),
('Neha Verma', 25, 'Female', '9876500012', 'Mumbai'),
('Rohit Patil', 40, 'Male', '9876500013', 'Delhi'),
('Sara Khan', 28, 'Female', '9876500014', 'Pune'),
('Vikram Desai', 35, 'Male', '9876500015', 'Nagpur'),
('Anjali Mehta', 22, 'Female', '9876500016', 'Mumbai');
SELECT * FROM PATIENTS;

-- DENTISTS DATA
INSERT INTO dentists(name, specialization, phone)
VALUES
('Dr. Mehta', 'Orthodontist', '9000011111'),
('Dr. Khan', 'Root Canal', '9000011112'),
('Dr. Sharma', 'Dental Surgery', '9000011113'),
('Dr. Reddy', 'Cosmetic Dentistry', '9000011114');
SELECT * FROM DENTISTS;

-- OLD DATA
INSERT INTO appointments(patient_id, dentist_id, appointment_date, status, notes)
VALUES
(1, 1, '2026-05-21', 'Scheduled', 'Teeth alignment'),
(2, 2, '2026-05-22', 'Scheduled', 'Tooth pain check'),
(3, 1, '2026-05-23', 'Completed', 'Routine checkup'),
(4, 2, '2026-05-24', 'Scheduled', 'Cavity issue'),
(5, 3, '2026-05-25', 'Scheduled', 'Wisdom tooth pain'),
(6, 4, '2026-05-26', 'Cancelled', 'Patient not available');
SELECT * FROM APPOINTMENTS;

-- TREATMENTS DATA
INSERT INTO treatments(appointment_id, treatment_name, cost)
VALUES
(1, 'Braces Consultation', 500.00),
(2, 'Root Canal', 2000.00),
(3, 'Dental Cleaning', 800.00),
(4, 'Filling', 1200.00),
(5, 'Tooth Extraction', 2500.00),
(6, 'Consultation', 300.00);
SELECT * FROM TREATMENTS;

-- BILLING DATA
INSERT INTO billing(appointment_id, total_amount, payment_status)
VALUES
(1, 500.00, 'Paid'),
(2, 2000.00, 'Pending'),
(3, 800.00, 'Paid'),
(4, 1200.00, 'Paid'),
(5, 2500.00, 'Pending'),
(6, 300.00, 'Paid');
SELECT * FROM BILLING;