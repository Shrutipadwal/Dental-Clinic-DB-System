# 🦷 Dental Clinic Database System

## 📌 Project Overview

This project is a SQL-based Dental Clinic Database System designed to manage patients, dentists, appointments, treatments, and billing information efficiently. It demonstrates relational database design and core SQL operations.

---

## 🗄️ Database Name

dental_clinic_db

---

## ⚙️ Features

- Insert, Select, Update, Delete (CRUD-style operations)
- Relational database structure using foreign keys
- Joins for combining multiple tables
- Aggregation queries for reporting
- Indexing for performance optimization
- Trigger for automatic status handling
- Backup and restore documentation (separate file)

---

## 📊 Tables Used

- patients
- dentists
- appointments
- treatments
- billing

---

## 🔗 SQL Concepts Used

- INSERT, SELECT, UPDATE, DELETE
- INNER JOIN
- LEFT JOIN
- GROUP BY & HAVING
- Aggregate Functions (COUNT, SUM, AVG)
- Subqueries
- Indexing
- Triggers

---

## ⚡ Indexes

Indexes were created to improve query performance, such as:

- Appointment date indexing
- Patient contact indexing

---

## 🔔 Trigger

A trigger was implemented to automatically set default values for appointment status when not provided.

---

## 📁 Project Files

- `schema.sql` → Database structure (tables + relationships)
- `sample_data.sql` → Sample data insertion
- `queries.sql` → All SQL queries (joins, reports, etc.)
- `backup_restore.txt` → Backup & restore process documentation

---

## ▶️ How to Run

1. Import `schema.sql` into MySQL Workbench
2. Run `sample_data.sql` to insert sample records
3. Execute `queries.sql` to test SQL operations
4. Refer to `backup_restore.txt` for backup and restore process

---

## 🎯 Objective

The main objective of this project is to simulate a real-world healthcare database system that demonstrates efficient data management using SQL, including operations such as data insertion, retrieval, updating, deletion, and relationship handling between multiple tables.

## 🚀 Key Learning Outcomes

- Understanding relational database design
- Writing efficient SQL queries
- Working with joins and aggregations
- Implementing triggers and indexes
- Understanding backup and restore concepts

---

## 📌 Note

This project is developed for learning purposes to strengthen SQL and database design concepts.
