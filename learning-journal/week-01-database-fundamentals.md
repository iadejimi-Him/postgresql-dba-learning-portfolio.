# Week 1: Database Fundamentals

## Learning Objective
Understand the fundamental concepts of database administration and begin building practical PostgreSQL DBA skills.

## Environment
- Database: PostgreSQL 18.6
- Interface: pgAdmin 4
- Operating System: Windows
- Practice Database: `medical_report`

## Topics Covered

### 1. Database Administration
Learned the responsibilities of a Database Administrator, including:
- Database installation and configuration
- Database security and user management
- Backup and recovery
- Performance monitoring
- Database maintenance

### 2. Database Structure
Practised inspecting:
- Databases
- Schemas
- Tables
- Columns
- Primary keys
- Foreign keys

### 3. Primary Keys and Foreign Keys
A primary key uniquely identifies each record in a table.

A foreign key establishes a relationship between tables and references a primary key or another eligible unique key.

### 4. Hospital Database Project
Created and populated a practice hospital database using fictional records.

| Table | Records |
|---|---:|
| Patients | 10,000 |
| Doctors | 500 |
| Appointments | 20,000 |
| Payments | Planned |

Established foreign key relationships between appointments, patients, and doctors.

### 5. SQL JOINs
Practised joining three tables:

- `appointments`
- `patient`
- `doctors`

Used `INNER JOIN` to retrieve appointment details with patient and doctor names.

### 6. Performance and Indexes
Explored:
- `EXPLAIN ANALYZE`
- Sequential scans
- Index scans
- Primary key indexes
- Unique indexes
- Ordinary indexes

Learned that indexes can improve data retrieval, but their usefulness depends on the query and table.

## Practical Skills Developed
- Inspecting PostgreSQL databases
- Writing SQL queries
- Creating tables and constraints
- Generating test data with `generate_series()`
- Maintaining referential integrity
- Joining multiple tables
- Understanding basic query execution plans

## Key Learning
A DBA must understand database structure, relationships, data integrity, performance, and recovery—not just SQL queries.

## Current Progress
- Week 1: Database fundamentals
- Hospital database: Initial tables and relationships created
- Portfolio: Learning journal started

## Next Steps
- Continue DBA fundamentals
- Practise database troubleshooting
- Learn backup and recovery
- Continue documenting practical exercises

