from flask import Blueprint, request, render_template, flash, redirect, url_for
from db import g
from flask_login import login_required, current_user

instructors = Blueprint('instructors', __name__)

@insturctors.route('/inst-<int:id>/')
def show(id):
  instructor = g.conn.execute("""SELECT * FROM instructor i WHERE id=%(id)s""", {'id': id}).first()

  cursor = g.conn.execute("""SELECT * FROM course c, teaches t WHERE c.id = t.course_id AND t.instructor_id=%(id)s""", {'id': id})
  courses = []
  for record in cursor:
    courses.append(record['code'])
  cursor.close()

  cursor = g.conn.execute("""SELECT * FROM review r WHERE instructor_id=%(id)s""")
  reviews = []
  for record in cursor:
    reviews.append(record['content'])
  cursor.close()

  return render_template('instructor.html', instructor=instructor, courses=courses, reviews=reviews)

@instructors.route('/')
def index():
  cursor = g.conn.execute("""SELECT * FROM instructor""", {'id': id})
  instructors = []
  for record in cursor:
    instructors.append(record)
  cursor.close()

  return render_template('instructor_index.html', instructors=instructors)
