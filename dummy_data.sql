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

INSERT INTO review(course_id, instructor_id, content) VALUES ('MATH UN1201', 'ia0008', "I took this class online and it was very manageable. The exams were open note which I greatly appreciated and it made the class a lot easier to do well in. He also drops one homework assignment. I recommend this class both if you want to learn calc iii thoroughly but also for a GPA boost! Also, I'm taking this online so if you take this in person it might be different (especially about the GPA boost part) however he is a really great teacher so I still recommend him for an in-person class.");

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

INSERT INTO writes(author_id, review_id) ('','');





