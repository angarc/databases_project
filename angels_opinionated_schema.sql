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
