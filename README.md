# PostgreSQL Database Administration (DBA) Learning Portfolio

Welcome to my Database Administration learning portfolio.

I am an aspiring Database Administrator developing practical skills in PostgreSQL database management, SQL, database security, backup and recovery, and performance optimization.

My goal is to build the technical knowledge and hands-on experience required to pursue a career in Database Administration and the wider IT industry.

## About Me

I have an academic background in Mechatronics and Systems Engineering and an interest in database technologies, automation, and information systems.

I am currently building my DBA skills through structured learning, practical exercises, and real-world-inspired database projects.

## Technical Environment

| Tool / Technology | Purpose |
|---|---|
| PostgreSQL 18.6 | Relational database management |
| pgAdmin 4 | Database administration interface |
| SQL | Database creation, querying and management |
| Python | Programming and database connectivity |
| Windows | Development environment |

## Featured Project: Hospital Management Database

### Project Overview

I developed a hospital management database using PostgreSQL to practise relational database design, data integrity, SQL queries, and database administration fundamentals.

The project contains the following tables:

| Table | Number of Records |
|---|---:|
| Patient | 10,000 |
| Doctors | 500 |
| Appointments | 20,000 |
| Payments | Planned |

### Database Relationships

- Each appointment references an existing patient.
- Each appointment references an existing doctor.
- Foreign key constraints maintain referential integrity between the tables.

### Skills Demonstrated

- Creating and managing relational database tables.
- Defining primary keys and foreign keys.
- Applying unique constraints.
- Generating test records using PostgreSQL `generate_series()`.
- Retrieving related information using SQL JOINs.
- Inspecting database structures and constraints.
- Analysing query execution plans using `EXPLAIN ANALYZE`.
- Understanding sequential scans and index scans.
- Creating and understanding database indexes.

## SQL Concepts Practised

Some of the PostgreSQL concepts I have practised include:

```sql
SELECT version();

SELECT current_database();

SELECT current_user;

SHOW port;
```

I have also practised:

- SELECT, WHERE and ORDER BY
- INNER JOIN
- Primary and foreign key constraints
- Unique constraints and indexes
- Information schema queries
- EXPLAIN ANALYZE
- Data generation with generate_series()

## Learning Roadmap

| Learning Area | Status |
|---|---|
| Database fundamentals | In progress |
| PostgreSQL administration | In progress |
| SQL and relational database design | Practising |
| Backup and recovery | Upcoming |
| Database security | Upcoming |
| Performance optimization | Upcoming |
| Linux and cloud database administration | Upcoming |
| DBA portfolio projects | In progress |

## Repository Structure

```text
postgresql-dba-learning-portfolio/
│
├── README.md
│
├── schema.sql
│
├── learning-journal/
│   └── week-01-database-fundamentals.md
│
├── sql/
│
├── projects/
│   └── hospital-database/
│
├── backup-and-recovery/
│
├── database-security/
│
└── performance-optimization/
```

## Career Objective

My objective is to become a competent Database Administrator with practical experience in database management, data integrity, security, backup and recovery, and performance optimization.

I am committed to documenting my learning journey, developing practical projects, and continuously improving my technical skills.

## Disclaimer

This repository is for educational and portfolio purposes. Sample datasets should contain fictional or anonymized records only. No real patient information, passwords, or database credentials should be published.

## Progress

I will continue updating this repository as I complete new DBA lessons, practical exercises, and projects.
