-- Hospital Management Database: practice and reporting queries
-- Run these queries after creating the schema and loading suitable test data.

-- 1. View every appointment with the associated patient and doctor.

SELECT
    a.id AS appointment_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    d.first_name || ' ' || d.last_name AS doctor_name,
    a.appointment_date,
    a.appointment_status
FROM public.appointments AS a
JOIN public.patient AS p
    ON a.patient_id = p.id
JOIN public.doctors AS d
    ON a.doctor_id = d.id
ORDER BY a.appointment_date;

-- 2. View one appointment by its ID.
-- Change 101 to the appointment ID you want to inspect.
SELECT
    a.id AS appointment_id,
    p.id AS patient_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    d.id AS doctor_id,
    d.first_name || ' ' || d.last_name AS doctor_name,
    a.appointment_date,
    a.appointment_status
FROM public.appointments AS a
JOIN public.patient AS p
    ON a.patient_id = p.id
JOIN public.doctors AS d
    ON a.doctor_id = d.id
WHERE a.id = 101;

-- 3. View the appointment history for one patient.
-- Replace 1 with the required patient ID.
SELECT
    a.id AS appointment_id,
    a.appointment_date,
    a.appointment_status,
    d.first_name || ' ' || d.last_name AS doctor_name
FROM public.appointments AS a
JOIN public.doctors AS d
    ON a.doctor_id = d.id
WHERE a.patient_id = 1
ORDER BY a.appointment_date DESC;

-- 4. View appointments assigned to one doctor.
-- Replace 1 with the required doctor ID.
SELECT
    a.id AS appointment_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    a.appointment_date,
    a.appointment_status
FROM public.appointments AS a
JOIN public.patient AS p
    ON a.patient_id = p.id
WHERE a.doctor_id = 1
ORDER BY a.appointment_date;

-- 5. Count appointments by status.
SELECT
    appointment_status,
    COUNT(*) AS total_appointments
FROM public.appointments
GROUP BY appointment_status
ORDER BY total_appointments DESC;

-- 6. Count appointments handled by each doctor, including doctors
-- who currently have no appointments.
SELECT
    d.id AS doctor_id,
    d.first_name || ' ' || d.last_name AS doctor_name,
    COUNT(a.id) AS total_appointments
FROM public.doctors AS d
LEFT JOIN public.appointments AS a
    ON a.doctor_id = d.id
GROUP BY d.id, d.first_name, d.last_name
ORDER BY total_appointments DESC, doctor_name;

-- 7. Find patients who do not have any appointments.
SELECT
    p.id AS patient_id,
    p.first_name,
    p.last_name,
    p.email
FROM public.patient AS p
LEFT JOIN public.appointments AS a
    ON a.patient_id = p.id
WHERE a.id IS NULL
ORDER BY p.last_name, p.first_name;

-- 8. Summarise appointment volume by calendar quarter.
SELECT
    EXTRACT(YEAR FROM appointment_date) AS appointment_year,
    EXTRACT(QUARTER FROM appointment_date) AS appointment_quarter,
    COUNT(*) AS total_appointments
FROM public.appointments
GROUP BY
    EXTRACT(YEAR FROM appointment_date),
    EXTRACT(QUARTER FROM appointment_date)
ORDER BY appointment_year, appointment_quarter;
