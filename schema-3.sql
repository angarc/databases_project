CREATE TABLE student (
    uni varchar(10) primary key,
    full_name varchar(40),
    class_year int,
    gpa decimal(4, 3)
);

CREATE TABLE course (
    course_id varchar(10) primary key,
    course_code varchar(20) UNIQUE,
    semester varchar(50),
    points decimal(1,1),
    descr varchar,
    class_time timestamp,
    capacity int
);

CREATE TABLE instructor (
    uni varchar(10) primary key,
    full_name varchar(50)
);

CREATE TABLE review (
    id varchar(10) PRIMARY KEY,
    course varchar(10),
    instructor varchar(10),
    body text,
    foreign key (course) references course(course_id),
    foreign key (instructor) references instructor(uni)
);

CREATE TABLE school (
    school_name varchar(255) primary key
);

CREATE TABLE department (
    department_name varchar(255) primary key
);

CREATE TABLE major (
    major_name varchar(255) primary key
);

CREATE TABLE writes (
    author_id varchar(10),
    review_id varchar(10),
    primary key (author_id, review_id),
    foreign key (author_id) references student(uni),
    foreign key (review_id) references review(review_id)
);

CREATE TABLE enrolls_in (
    student_id varchar(10),
    school_id varchar(255),
    primary key (student_id, school_id),
    foreign key (student_id) references student(uni),
    foreign key (school_id) references school(school_name)
);

CREATE TABLE contains (
    school_id varchar(255),
    department_id varchar(255),
    primary key (school_id, department_id),
    foreign key (school_id) references school(school_name),
    foreign key (department_id) references department(department_name)
);

CREATE TABLE offers (
    department_id varchar(255),
    major_id varchar(255),
    primary key (department_id, major_id),
    foreign key (department_id) references department(department_name),
    foreign key (major_id) references major(major_name)
);

CREATE TABLE studies (
    student_id varchar(10),
    major_id varchar(255),
    primary key (student_id, major_id),
    foreign key (student_id) references student(uni),
    foreign key (major_id) references major(major_name)
);

CREATE TABLE requires (
    major_id varchar(255),
    course_code varchar(20),
    primary key (major_id, course_code),
    foreign key (major_id) references major(major_name),
    foreign key (course_code) references course(course_code)
);

CREATE TABLE takes (
    student_id varchar(10),
    course_id varchar(10),
    primary key (student_id, course_id),
    foreign key (student_id) references student(uni),
    foreign key (course_id) references course(course_id)
);

CREATE TABLE is_on_waitlist (
    student_id varchar(10),
    course_id varchar(10),
    primary key (student_id, course_id),
    foreign key (student_id) references student(uni),
    foreign key (course_id) references course(course_id),
    waitlist_position int
);

CREATE TABLE refers_to (
    review_id varchar(10),
    course_id varchar(10),
    primary key (review_id, course_id),
    foreign key (review_id) references review(review_id),
    foreign key (course_id) references course(course_id)
);

CREATE TABLE teaches (
    instructor_id varchar(10),
    course_id varchar(10),
    primary key (instructor_id, course_id),
    foreign key (instructor_id) references instructor(uni),
    foreign key (course_id) references course(course_id)
);

CREATE TABLE has_prereq (
    course_id varchar(10),
    prereq_id varchar(10),
    primary key (course_id, prereq_id),
    foreign key (course_id) references course(course_id),
    foreign key (prereq_id) references course(course_id)
);
