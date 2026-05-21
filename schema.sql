#Dental Clinic Database System

## 1. schema.sql
-- =========================================
-- DATABASE CREATION
-- =========================================

CREATE DATABASE dental_clinic_db;
USE dental_clinic_db;

-- =========================================
-- TABLE: patients
-- =========================================

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15) UNIQUE,
    address VARCHAR(255)
);

-- =========================================
-- TABLE: dentists
-- =========================================

CREATE TABLE dentists (
    dentist_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(15)
);

-- =========================================
-- TABLE: appointments
-- =========================================

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    dentist_id INT,
    appointment_date DATE,
    status VARCHAR(20),
    notes VARCHAR(255),

    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (dentist_id) REFERENCES dentists(dentist_id)
);

-- =========================================
-- TABLE: treatments
-- =========================================

CREATE TABLE treatments (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    treatment_name VARCHAR(100),
    cost DECIMAL(10,2),

    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

-- =========================================
-- TABLE: billing
-- =========================================

CREATE TABLE billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(20),

    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

