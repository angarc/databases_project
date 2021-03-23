from flask import Blueprint, request, render_template, flash, redirect, url_for
from db import g
from flask_login import login_required, current_user

students = Blueprint('students', __name__)

@students.route('/<int:id>/')
@login_required
def show(id):
  cursor = g.conn.execute("""SELECT * FROM student s WHERE s.id=%(id)s""", {'id': id})
  student = cursor.first()
  cursor.close()

  cursor = g.conn.execute("""SELECT * FROM enrolls_in e, school s WHERE e.school_id=s.id AND e.student_id=%(id)s""", {'id': id})
  schools = []
  for record in cursor:
    schools.append(record['s.name'])
  cursor.close()

  cursor = g.conn.execute("""SELECT * FROM department d, offers o, major m, studies s WHERE d.id=o.department_id AND s.major_id = m.id AND s.student_id=%(id)s AND o.major_id = m.id""", {'id': id})
  majors = []
  for record in cursor:
    majors.append((record['title'], record['name']))
  cursor.close()

  cursor = g.conn.execute("""SELECT * FROM course c, takes t WHERE c.id = t.course_id AND t.student_id=%(id)s""", {'id': id})
  courses = []
  for record in cursor:
    courses.append(record['code'])
  cursor.close()
  return render_template('student.html', student=student, schools=schools, majors=majors, courses=courses)

@students.route('my-profile')
@login_required
def my_profile():
  cursor = g.conn.execute("""SELECT * FROM student WHERE id=%(id)s""", {'id': current_user.id})
  student = cursor.first()
  cursor.close()
  majors = []
  my_majors = []

  courses = []
  my_courses = []

  cursor = g.conn.execute("""SELECT * FROM major;""")
  for record in cursor:
    majors.append(record)
  cursor.close()

  cursor = g.conn.execute("""SELECT * FROM course;""")
  for record in cursor:
    courses.append(record)
  cursor.close()

  cursor = g.conn.execute("""SELECT major_id FROM studies WHERE student_id=%(id)s;""", {'id': current_user.id})
  for record in cursor:
    my_majors.append(record['major_id'])
  cursor.close()

  cursor = g.conn.execute("""SELECT course_id FROM takes WHERE student_id=%(id)s;""", {'id': current_user.id})
  for record in cursor:
    my_courses.append(record['course_id'])
  cursor.close()

  return render_template('my-profile.html', student=student, majors=majors, my_majors=my_majors, courses=courses, my_courses=my_courses)

@students.route('update-profile', methods=['POST'])
def update_profile():
  full_name = request.form.get('full_name')
  uni = request.form.get('uni')
  email = request.form.get('email')
  majors = request.form.getlist('majors')
  courses = request.form.getlist('courses')

  print(courses)

  cursor = g.conn.execute("""DELETE FROM studies WHERE student_id=%(id)s""", {'id': current_user.id})
  cursor.close()
  for major in majors:
    cursor = g.conn.execute("""INSERT INTO studies(student_id, major_id) VALUES(%(id)s, (SELECT id FROM major WHERE title=%(title)s));""", {
      'id': current_user.id,
      'title': major
    })
    cursor.close()

  cursor = g.conn.execute("""DELETE FROM takes WHERE student_id=%(id)s;""", {'id': current_user.id})
  cursor.close()
  for course in courses:
    cursor = g.conn.execute("""INSERT INTO takes(student_id, course_id) VALUES(%(id)s, (SELECT id FROM course WHERE code=%(code)s));""", {
      'id': current_user.id,
      'code': course
    })
    cursor.close()
  

  flash('Successfully updated profile', category='success')
  return redirect(url_for('students.my_profile'))
