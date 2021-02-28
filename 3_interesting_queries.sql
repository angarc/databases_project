SELECT i.full_name, (SELECT COUNT(*) AS num_reviews FROM review r WHERE r.instructor_id = i.id) FROM instructor i;

SELECT c.code, (SELECT s.full_name FROM student s WHERE s.gpa = (SELECT MAX(student.gpa) FROM student, section, takes WHERE takes.section_id = section.id AND student.id = takes.student_id)) FROM course c;
