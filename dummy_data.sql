INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('ag4219', 'Angel Garcia', 2023, 4.3333);
INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('mr3986', 'Martin Ristovski', 2023, 4.3333);
INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('nm1708', 'Nichoal Muro', 2023, 4.0);
INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('ap0000', 'Alia Powell', 2023, 3.2);
INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('gp0001', 'Gemma Price', 2022, 2.5);
INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('mh0002', 'Malik Howard', 2024, 2.1);
INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('ec0003', 'Ezequiel Carroll', 2023, 1.7);
INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('em0004', 'Elisha Montes', 2023, 3.7);
INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('ju0005', 'Joaquin Underwood', 2023, 3.6);
INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('sa0006', 'Sidney Aguilar', 2023, 3.47);
INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('af0007', 'Axel Fisher', 2023, 3.0);
INSERT INTO student(uni, full_name, class_year, gpa) VALUES ('aw0008', 'Akira Wagner', 2023, 3.1);

INSERT INTO course(code, points, description) VALUES ('APMA E2101', 3, 'Prerequisites: Calculus III. A unified, single-semester introduction to differential equations and linear algebra with emphases on (1) elementary analytical and numerical technique and (2) discovering the analogs on the continuous and discrete sides of the mathematics of linear operators: superposition, diagonalization, fundamental solutions. Concepts are illustrated with applications using the language of engineering, the natural sciences, and the social sciences. Students execute scripts in Mathematica and MATLAB (or the like) to illustrate and visualize course concepts (programming not required).');
INSERT INTO course(code, points, description) VALUES ('BIOL UN3031', 3, 'Prerequisites: BIOL UN2005 and BIOL UN2006 or the equivalent. General genetics course focused on basic principles of transmission genetics and the application of genetic approaches to the study of biological function. Principles will be illustrated using classical and contemporary examples from prokaryote and eukaryote organisms, and the experimental discoveries at their foundation will be featured.');
INSERT INTO course(code, points, description) VALUES ('COMS W4156', 3, 'Prerequisites: (COMS W3157) or equivalent. Software lifecycle using frameworks, libraries and services. Major emphasis on software testing. Centers on a team project.');
INSERT INTO course(code, points, description) VALUES ('COMS W3261', 3, 'Prerequisites: (COMS W3203) Corequisites: COMS W3134,COMS W3136,COMS W3137 Regular languages: deterministic and non-deterministic finite automata, regular expressions. Context-free languages: context-free grammars, push-down automata. Turing machines, the Chomsky hierarchy, and the Church-Turing thesis. Introduction to Complexity Theory and NP-Completeness.');
INSERT INTO course(code, points, description) VALUES ('MECE E4211', 3, 'Prerequisites: (MECE E3301) MECE E3301. Energy sources such as oil, gas, coal, gas hydrates, hydrogen, solar, and wind. Energy conversion systems for electrical power generation, automobiles, propulsion and refrigeration. Engines, steam and gas turbines, wind turbines; devices such as fuel cells, thermoelectric converters, and photovoltaic cells. Specialized topics may include carbon-dioxide sequestration, cogeneration, hybrid vehicles and energy storage devices.');
INSERT INTO course(code, points, description) VALUES ('COMS W3157', 3, 'Prerequisites: (COMS W3134) or (COMS W3137) C programming language and Unix systems programming. Also covers Git, Make, TCP/IP networking basics, C++ fundamentals.');
INSERT INTO course(code, points, description) VALUES ('COMS W3134', 3, 'Prerequisites: (COMS W1004) or knowledge of Java. Data types and structures: arrays, stacks, singly and doubly linked lists, queues, trees, sets, and graphs. Programming techniques for processing such structures: sorting and searching, hashing, garbage collection. Storage management. Rudiments of the analysis of algorithms. Taught in Java. Note: Due to significant overlap, students may receive credit for only one of the following three courses: COMS W3134, COMS W3136, COMS W3137.');
INSERT INTO course(code, points, description) VALUES ('COMS W1004', 3, 'A general introduction to computer science for science and engineering students interested in majoring in computer science or engineering. Covers fundamental concepts of computer science, algorithmic problem-solving capabilities, and introductory Java programming skills. Assumes no prior programming background. Columbia University students may receive credit for only one of the following two courses: 1004 or 1005.');
INSERT INTO course(code, points, description) VALUES ('MATH UN1201', 3, 'Prerequisites: MATH UN1101 or the equivalent Vectors in dimensions 2 and 3, complex numbers and the complex exponential function with applications to differential equations, Cramers rule, vector-valued functions of one variable, scalar-valued functions of several variables, partial derivatives, gradients, surfaces, optimization, the method of Lagrange multipliers.');
INSERT INTO course(code, points, description) VALUES ('MECE E3301', 3, 'Classical thermodynamics. Basic properties and concepts, thermodynamic properties of pure substances, equation of state, work, heat, the first and second laws for flow and nonflow processes, energy equations, entropy, and irreversibility. Introduction to power and refrigeration cycles.');

INSERT INTO section(course_id, semester, start_time, end_time, capacity) VALUES ('MECE E4211',  '2020_3', '10:10', '11:25', 125);
INSERT INTO section(course_id, semester, start_time, end_time, capacity) VALUES ('COMS W3261',  '2020_3', '12:40', '13:55', 150);
INSERT INTO section(course_id, semester, start_time, end_time, capacity) VALUES ('COMS W3261',  '2020_3', '08:40', '9:55',  150);
INSERT INTO section(course_id, semester, start_time, end_time, capacity) VALUES ('APMA E2101',  '2020_3', '18:40', '19:55', 100);
INSERT INTO section(course_id, semester, start_time, end_time, capacity) VALUES ('COMS W4156',  '2021_1', '12:10', '14:10', 70);
INSERT INTO section(course_id, semester, start_time, end_time, capacity) VALUES ('BIOL UN3031', '2021_1', '13:40', '15:40', 60);
INSERT INTO section(course_id, semester, start_time, end_time, capacity) VALUES ('MECE E3301',  '2020_1', '10:10', '11:25', 125);
INSERT INTO section(course_id, semester, start_time, end_time, capacity) VALUES ('MATH UN1201', '2020_1', '12:40', '13:55', 200);
INSERT INTO section(course_id, semester, start_time, end_time, capacity) VALUES ('COMS W1004',  '2019_1', '08:40', '9:55',  350);
INSERT INTO section(course_id, semester, start_time, end_time, capacity) VALUES ('COMS W3134',  '2019_3', '18:40', '19:55', 300);
INSERT INTO section(course_id, semester, start_time, end_time, capacity) VALUES ('COMS W3157',  '2020_1', '12:10', '14:10', 250);

INSERT INTO instructor(uni, full_name) VALUES ('avh0001', 'Abraham Van Helsing');
INSERT INTO instructor(uni, full_name) VALUES ('hpm0002', 'Henry Philip McCoy');
INSERT INTO instructor(uni, full_name) VALUES ('zx0003', 'Zhi Xu');
INSERT INTO instructor(uni, full_name) VALUES ('tm0004', 'Ted Mosby');
INSERT INTO instructor(uni, full_name) VALUES ('ak0005', 'Anatoliy Kuznetsov');
INSERT INTO instructor(uni, full_name) VALUES ('mb0006', 'Marissa Bridges');
INSERT INTO instructor(uni, full_name) VALUES ('ap0007', 'Archimedes Porter');
INSERT INTO instructor(uni, full_name) VALUES ('ia0008', 'Isaac Asimov');
INSERT INTO instructor(uni, full_name) VALUES ('ab0009', 'Ameya Burrows');
INSERT INTO instructor(uni, full_name) VALUES ('fp0011', 'Felix Pletscher');

INSERT INTO review(course_id, instructor_id, content) VALUES (9, 8, "I took this class online and it was very manageable. The exams were open note which I greatly appreciated and it made the class a lot easier to do well in. He also drops one homework assignment. I recommend this class both if you want to learn calc iii thoroughly but also for a GPA boost! Also, I'm taking this online so if you take this in person it might be different (especially about the GPA boost part) however he is a really great teacher so I still recommend him for an in-person class.");
INSERT INTO review(course_id, instructor_id, content) VALUES (7, 10, "My only qualm is that he doesn't give out a week by week syllabus coverage. Other than that, Hagrid is great at breaking down and explaining abstract concepts and very patient with our questions. His anecdotes and side tangents are usually relevant, even if they aren't they really lighten the atmosphere.");
INSERT INTO review(course_id, instructor_id, content) VALUES (7, 10, "Feix Pletscher is not a good lecturer. The currciuculum glosses over a lot of topics. The motivation behind the data structures are not explained. Honestly, data structures at Columbia is a joke. For a class that is very important to computer science, you will feel like you can do the problem sets and maybe get As, but will end the class thinking that you did not learn anything. Connections between the data structures are not explained. A lot of times I had knowledge of the topic behind explained, but sat there and saw him explain it for the first time and thought that if this was my first time being exposed to what he is saying, I wouldn't have grasped the material.");
INSERT INTO review(course_id, instructor_id, content) VALUES (6, 4, "The emphasis of the course is on trivial details of tracing code, pointers, syntactical sugar, and sockets programming. You end up learning a good deal of C/C++, and forgetting the same content in a matter of months. The lectures are clear, TA's are incredibly dedicated, and Ted cares a great deal, but the focus throughout the course is frankly petty. It's disappointing that so much talent and energy is dedicated to details that should be taken for granted.");
INSERT INTO review(course_id, instructor_id, content) VALUES (6, 4, "Take this class seriously, and you'll learn a lot. Most importantly, you'll learn how to hold yourself accountable and have high standards. You'll get eaten alive in the competitive world of software without that kind of attitude. Ted Mosby is one of the most practical professors I've had at Columbia, and I'm glad I got knocked off my high horse by him and learned some perspective.");
INSERT INTO review(course_id, instructor_id, content) VALUES (6, 4, "Ted's lectures go by quickly, so make sure you take notes quickly or have recordings for backup (usually if you ask the listserv for recordings, someone will have one). You want to use a combination of hand-written and typed notes because he talks fast and writes a lot of code and diagrams on the board.");
INSERT INTO review(course_id, instructor_id, content) VALUES (8, 5, "Professor Kuznetsov is funny, approachable, caring, and knowledgeable about Java. His classes are very entertaining as he is an amazing lecturer, and one can tell that he really cares about his students a lot. I took this class during COVID, and he was very understanding and tried to make the class as least stressful as possible.");
INSERT INTO review(course_id, instructor_id, content) VALUES (2, 6, "The worst class I have taken in any science department while at Columbia for four years. This teacher lectures solely from slides in a rote way pegged firmly behind her lectern. This would not be horrible were it not for the fact that her slides have mistakes, she cannot answer questions, she's unapprochable and unwilling to receive student criticism, her assignments are busy-work, and all her content-knowledge is derived from the text book.");
INSERT INTO review(course_id, instructor_id, content) VALUES (1, 1, "The materials of this class can be read at home and your understanding of the whole course can be done in just a couple of hours. Professor Rebell might be a well-known scholar in his field, but as a professor, he is not that good at all. His class is often boring, and he lectures all the time. He asks a couple of questions to get students involved, but tries to hard.");
INSERT INTO review(course_id, instructor_id, content) VALUES (2, 9, "I find Prof. Burrows' classroom delivery to be disorganized and hard to follow along with. I am not a fan of how she writes the lecture notes word-for-word on the blackboard, and she sometimes trails off while explaining something. There were several instances (e.g. first lecture of Paxos) when I went to the TA after class to clarify a concept, and was told by the TA that the professor made several mistakes when explaining the concept in class.");

INSERT INTO school(name) VALUES ('Columbia College');
INSERT INTO school(name) VALUES ('Barnard College');
INSERT INTO school(name) VALUES ('Fu Foundation School of Engineering and Applied Science');
INSERT INTO school(name) VALUES ('Business School');
INSERT INTO school(name) VALUES ('Medical School');
INSERT INTO school(name) VALUES ('Law School');
INSERT INTO school(name) VALUES ('School of General Studies');
INSERT INTO school(name) VALUES ('Journalism School');
INSERT INTO school(name) VALUES ('Nursing School');
INSERT INTO school(name) VALUES ('School of Professional Studies');

INSERT INTO department(name) VALUES ('Applied Physics and Applied Mathematics Department');
INSERT INTO department(name) VALUES ('Biology Department');
INSERT INTO department(name) VALUES ('Computer Science Department');
INSERT INTO department(name) VALUES ('Mechanical Engineering Department');
INSERT INTO department(name) VALUES ('Business Department');
INSERT INTO department(name) VALUES ('English Department');
INSERT INTO department(name) VALUES ('Mathematics Department');
INSERT INTO department(name) VALUES ('History Department');
INSERT INTO department(name) VALUES ('Physics Department');
INSERT INTO department(name) VALUES ('Statistics Department');

INSERT INTO major(title) VALUES ('Computer Science');
INSERT INTO major(title) VALUES ('Mechanical Engineering');
INSERT INTO major(title) VALUES ('Computer Engineering');
INSERT INTO major(title) VALUES ('Applied Mathematics');
INSERT INTO major(title) VALUES ('Applied Physics');
INSERT INTO major(title) VALUES ('Biology');
INSERT INTO major(title) VALUES ('Biochemistry');
INSERT INTO major(title) VALUES ('English');
INSERT INTO major(title) VALUES ('Physics');
INSERT INTO major(title) VALUES ('Statistics');
INSERT INTO major(title) VALUES ('History');
INSERT INTO major(title) VALUES ('Mathematics');

INSERT INTO writes(author_id, review_id) VALUES (1, 1);
INSERT INTO writes(author_id, review_id) VALUES (2, 2);
INSERT INTO writes(author_id, review_id) VALUES (3, 3);
INSERT INTO writes(author_id, review_id) VALUES (4, 4);
INSERT INTO writes(author_id, review_id) VALUES (5, 5);
INSERT INTO writes(author_id, review_id) VALUES (6, 6);
INSERT INTO writes(author_id, review_id) VALUES (7, 7);
INSERT INTO writes(author_id, review_id) VALUES (8, 8);
INSERT INTO writes(author_id, review_id) VALUES (9, 9);
INSERT INTO writes(author_id, review_id) VALUES (10, 10);

INSERT INTO enrolls_in(student_id, school_id) VALUES (1, 3);
INSERT INTO enrolls_in(student_id, school_id) VALUES (2, 1);
INSERT INTO enrolls_in(student_id, school_id) VALUES (3, 1);
INSERT INTO enrolls_in(student_id, school_id) VALUES (4, 2);
INSERT INTO enrolls_in(student_id, school_id) VALUES (5, 2);
INSERT INTO enrolls_in(student_id, school_id) VALUES (6, 6);
INSERT INTO enrolls_in(student_id, school_id) VALUES (7, 4);
INSERT INTO enrolls_in(student_id, school_id) VALUES (8, 5);
INSERT INTO enrolls_in(student_id, school_id) VALUES (9, 8);
INSERT INTO enrolls_in(student_id, school_id) VALUES (10, 9);
INSERT INTO enrolls_in(student_id, school_id) VALUES (11, 1);
INSERT INTO enrolls_in(student_id, school_id) VALUES (12, 1);

INSERT INTO contains(school_id, department_id) VALUES (1, 2);
INSERT INTO contains(school_id, department_id) VALUES (1, 6);
INSERT INTO contains(school_id, department_id) VALUES (1, 7);
INSERT INTO contains(school_id, department_id) VALUES (1, 8);
INSERT INTO contains(school_id, department_id) VALUES (1, 9);
INSERT INTO contains(school_id, department_id) VALUES (1, 10);
INSERT INTO contains(school_id, department_id) VALUES (2, 1);
INSERT INTO contains(school_id, department_id) VALUES (2, 3);
INSERT INTO contains(school_id, department_id) VALUES (2, 4);
INSERT INTO contains(school_id, department_id) VALUES (4, 5);

INSERT INTO offers(department_id, major_id) VALUES (1, 4);
INSERT INTO offers(department_id, major_id) VALUES (1, 5);
INSERT INTO offers(department_id, major_id) VALUES (2, 6);
INSERT INTO offers(department_id, major_id) VALUES (2, 7);
INSERT INTO offers(department_id, major_id) VALUES (3, 1);
INSERT INTO offers(department_id, major_id) VALUES (3, 3);
INSERT INTO offers(department_id, major_id) VALUES (4, 2);
INSERT INTO offers(department_id, major_id) VALUES (6, 8);
INSERT INTO offers(department_id, major_id) VALUES (7, 12);
INSERT INTO offers(department_id, major_id) VALUES (8, 11);
INSERT INTO offers(department_id, major_id) VALUES (9, 9);
INSERT INTO offers(department_id, major_id) VALUES (10, 10);

INSERT INTO studies(student_id, major_id) VALUES (1,1);
INSERT INTO studies(student_id, major_id) VALUES (2,1);
INSERT INTO studies(student_id, major_id) VALUES (3,3);
INSERT INTO studies(student_id, major_id) VALUES (4,4);
INSERT INTO studies(student_id, major_id) VALUES (5,5);
INSERT INTO studies(student_id, major_id) VALUES (6,2);
INSERT INTO studies(student_id, major_id) VALUES (7,7);
INSERT INTO studies(student_id, major_id) VALUES (8,8);
INSERT INTO studies(student_id, major_id) VALUES (9,9);
INSERT INTO studies(student_id, major_id) VALUES (10,11);
INSERT INTO studies(student_id, major_id) VALUES (11,12);
INSERT INTO studies(student_id, major_id) VALUES (12,12);

INSERT INTO requires(major_id, course_code) VALUES (1, 'COMS W4156');
INSERT INTO requires(major_id, course_code) VALUES (1, 'COMS W3261');
INSERT INTO requires(major_id, course_code) VALUES (1, 'COMS W3157');
INSERT INTO requires(major_id, course_code) VALUES (1, 'COMS W3134');
INSERT INTO requires(major_id, course_code) VALUES (1, 'COMS W1004');
INSERT INTO requires(major_id, course_code) VALUES (4, 'APMA E2101');
INSERT INTO requires(major_id, course_code) VALUES (4, 'MATH UN1201');
INSERT INTO requires(major_id, course_code) VALUES (6, 'BIOL UN3031');
INSERT INTO requires(major_id, course_code) VALUES (2, 'MECE E3301');
INSERT INTO requires(major_id, course_code) VALUES (2, 'MECE E4211');

INSERT INTO takes(student_id, section_id) VALUES (1,2);
INSERT INTO takes(student_id, section_id) VALUES (1,5);
INSERT INTO takes(student_id, section_id) VALUES (2,12);
INSERT INTO takes(student_id, section_id) VALUES (2,8);
INSERT INTO takes(student_id, section_id) VALUES (2,3);
INSERT INTO takes(student_id, section_id) VALUES (3,4);
INSERT INTO takes(student_id, section_id) VALUES (6,1);
INSERT INTO takes(student_id, section_id) VALUES (6,7);
INSERT INTO takes(student_id, section_id) VALUES (4,8);
INSERT INTO takes(student_id, section_id) VALUES (5,6);
INSERT INTO takes(student_id, section_id) VALUES (7,9);
INSERT INTO takes(student_id, section_id) VALUES (8,8);
INSERT INTO takes(student_id, section_id) VALUES (12,8);

INSERT INTO waitlisted(student_id, section_id) VALUES (2,5);
INSERT INTO waitlisted(student_id, section_id) VALUES (9,10);
INSERT INTO waitlisted(student_id, section_id) VALUES (4,2);
INSERT INTO waitlisted(student_id, section_id) VALUES (4,3);
INSERT INTO waitlisted(student_id, section_id) VALUES (11,8);
INSERT INTO waitlisted(student_id, section_id) VALUES (7,6);

INSERT INTO refers_to(review_id, section_id) VALUES ( , );

INSERT INTO teaches(instructor_id, section_id) VALUES ( , );

INSERT INTO prerequisites(course_code, prereq_code) VALUES ('APMA E2101', 'MATH UN1201');
INSERT INTO prerequisites(course_code, prereq_code) VALUES ('COMS W4156', 'COMS W3157');
INSERT INTO prerequisites(course_code, prereq_code) VALUES ('COMS W3157', 'COMS W3134');
INSERT INTO prerequisites(course_code, prereq_code) VALUES ('COMS W3134', 'COMS W1004');
INSERT INTO prerequisites(course_code, prereq_code) VALUES ('MECE E4211', 'MECE E3301');

