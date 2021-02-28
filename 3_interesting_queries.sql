-- find the instructors ordered by which ones have the most number of reviews
SELECT i.full_name, (SELECT COUNT(*) AS num_reviews FROM review r WHERE r.instructor_id = i.id) FROM instructor i ORDER BY num_reviews DESC;

-- find the students with the highest gpa across for each course across all sections
SELECT c.code, (SELECT s.full_name FROM student s WHERE s.gpa = (SELECT MAX(student.gpa) FROM student, section, takes WHERE takes.section_id = section.id AND student.id = takes.student_id)) FROM course c;

-- find majors with number of students majoring in them. order by popularity
SELECT m.title, COUNT(*) AS major_count FROM major m, studies s WHERE m.id = s.major_id GROUP BY m.title ORDER BY major_count;