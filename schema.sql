CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    uni varchar(10) UNIQUE NOT NULL,
    full_name varchar(40) NOT NULL,
    class_year int NOT NULL,
    gpa decimal(5, 4),
    CHECK (gpa >= 0 AND gpa <= 4.3333)
);

CREATE TABLE course (
    id SERIAL PRIMARY KEY,
    code varchar(20) UNIQUE NOT NULL,
    points decimal(2,1) NOT NULL,
    description text,
    CHECK (points >= 0 AND points <= 6)
);

CREATE TABLE section (
  id SERIAL PRIMARY KEY,
  course_id int NOT NULL,
  semester varchar(50) NOT NULL,
  start_time time,
  end_time time,
  capacity int,
  foreign key (course_id) references course,
  CHECK (capacity >= 0)
);

CREATE TABLE instructor (
    id SERIAL PRIMARY KEY,
    uni varchar(10) UNIQUE,
    full_name varchar(50)
);

CREATE TABLE review (
    id SERIAL PRIMARY KEY,
    course_id int,
    instructor_id int,
    content text,
    foreign key (course_id) references course,
    foreign key (instructor_id) references instructor
);

CREATE TABLE school (
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL
);

CREATE TABLE department (
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL
);

CREATE TABLE major (
    id SERIAL PRIMARY KEY,
    title varchar(255) NOT NULL
);

CREATE TABLE writes (
    id SERIAL PRIMARY KEY,
    author_id int NOT NULL,
    review_id int,
    foreign key (author_id) references student,
    foreign key (review_id) references review
);

CREATE TABLE enrolls_in (
    id SERIAL PRIMARY KEY,
    student_id int NOT NULL,
    school_id int NOT NULL,
    foreign key (student_id) references student,
    foreign key (school_id) references school
);

CREATE TABLE contains (
    id SERIAL PRIMARY KEY,
    school_id int,
    department_id int,
    foreign key (school_id) references school,
    foreign key (department_id) references department
);

CREATE TABLE offers (
    id SERIAL PRIMARY KEY,
    department_id int NOT NULL,
    major_id int,
    foreign key (department_id) references department,
    foreign key (major_id) references major
);

CREATE TABLE studies (
    id SERIAL PRIMARY KEY,
    student_id int NOT NULL,
    major_id int NOT NULL,
    foreign key (student_id) references student,
    foreign key (major_id) references major
);

CREATE TABLE requires (
    id SERIAL PRIMARY KEY,
    major_id int,
    course_code varchar(50) NOT NULL,
    foreign key (major_id) references major,
    foreign key (course_code) references course(code)
);

CREATE TABLE takes (
    id SERIAL PRIMARY KEY,
    student_id int,
    section_id int NOT NULL,
    foreign key (student_id) references student,
    foreign key (section_id) references section
);

CREATE TABLE waitlisted (
    id SERIAL PRIMARY KEY,
    student_id int,
    section_id int NOT NULL,
    foreign key (student_id) references student,
    foreign key (section_id) references section,
    position int,
    CHECK (position >= 1)
);

CREATE TABLE refers_to (
    id SERIAL PRIMARY KEY,
    review_id int,
    section_id int NOT NULL,
    foreign key (review_id) references review,
    foreign key (section_id) references section
);

CREATE TABLE teaches (
    id SERIAL PRIMARY KEY,
    instructor_id int NOT NULL,
    section_id int NOT NULL,
    foreign key (instructor_id) references instructor,
    foreign key (section_id) references section
);

CREATE TABLE prerequisites (
    id SERIAL PRIMARY KEY,
    course_code varchar(50) NOT NULL,
    prereq_code varchar(50),
    foreign key (course_code) references course(code),
    foreign key (prereq_code) references course(code)
);

-- ALTERATIONS (TRY NOT TO DELETE)
DELETE FROM review;
DELETE FROM course;       
DELETE FROM department;   
DELETE FROM instructor;   
DELETE FROM major;        
DELETE FROM requires;     
DELETE FROM student;
DELETE FROM studies;      
DELETE FROM takes;        
DELETE FROM teaches;      
DELETE FROM waitlisted;

ALTER TABLE student ADD email VARCHAR(255) NOT NULL;
ALTER TABLE student ADD password VARCHAR(255) NOT NULL;
ALTER TABLE student ADD is_active INTEGER CHECK(is_active in (0,1));

CREATE TABLE swap_request (
    id SERIAL PRIMARY KEY,
    student_id int NOT NULL,
    matched_swap_request_id int,
    start_time TIME NOT NULL,
    end_time   TIME NOT NULL,
    requested_earliest_time TIME NOT NULL,
    requested_latest_time TIME NOT NULL,
    instructor_name varchar(255),
    course_name varchar(255),
    course_code varchar(255),
    FOREIGN KEY (student_id) references student
);


ALTER TABLE takes DROP CONSTRAINT takes_section_id_fkey;
ALTER TABLE takes DROP COLUMN section_id;
ALTER TABLE takes ADD course_id INT NOT NULL;
ALTER TABLE takes ADD CONSTRAINT takes_course_id_fkey FOREIGN KEY (course_id) REFERENCES course(id);

DROP TABLE section;

ALTER TABLE student ADD bio TEXT;
ALTER TABLE student ADD clubs VARCHAR(100)[];
