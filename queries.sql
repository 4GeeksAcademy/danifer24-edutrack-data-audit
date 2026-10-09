SELECT student_name, student_email, completion_percentage FROM enrollments WHERE course_title = 'Intro to Python'

SELECT * FROM enrollments WHERE completion_percentage < 10

SELECT * FROM enrollments WHERE instructor IS NULL;

SELECT * FROM enrollments WHERE passed = false ORDER BY completion_percentage DESC LIMIT 5;

SELECT * FROM enrollments WHERE EXTRACT(YEAR FROM enrollment_date) = 2024 ORDER BY enrollment_date DESC;

INSERT INTO public.enrollments (
    id, 
    student_id, 
    student_name, 
    student_email, 
    course_id, 
    course_title, 
    category, 
    enrollment_date, 
    completion_percentage, 
    passed, 
    monthly_fee_paid, 
    instructor
) VALUES (
    18, 
    3, 
    'Lucia Fernandes', 
    'lucia.fernandes@student.edutrack.com', 
    5, 
    'Advanced Python', 
    'Programming', 
    '2025-04-01', 
    0, 
    false, 
    '69.99', 
    'Carlos Vega'
);

UPDATE enrollments SET instructor = 'Pending assignment' WHERE instructor IS NULL;

DELETE FROM enrollments WHERE student_email LIKE '%@test.com';

SELECT category, COUNT(*) AS total_inscripciones FROM enrollments GROUP BY category;

SELECT 
    course_title, 
    ROUND(AVG(completion_percentage), 2) AS promedio_avance FROM enrollments GROUP BY course_title ORDER BY promedio_avance ASC;

SELECT course_title, ROUND(AVG(completion_percentage), 2) AS promedio_avance FROM enrollments GROUP BY course_title ORDER BY promedio_avance ASC;

SELECT course_title, COUNT(*) AS total_inscripciones FROM enrollments GROUP BY course_title HAVING COUNT(*) > 3;

SELECT category, SUM(monthly_fee_paid::numeric) AS ingresos_totales FROM enrollments GROUP BY category ORDER BY ingresos_totales DESC;