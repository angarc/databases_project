from flask import Blueprint, request, render_template, flash, redirect, url_for
from db import g
from flask_login import login_required, current_user

courses = Blueprint('courses', __name__)

@courses.route('/course-<int:id>/')
def show(id):
  course = g.conn.execute("""SELECT * FROM course c WHERE id=%(id)s""", {'id': id}).first()

  cursor = g.conn.execute("""SELECT * FROM course c, section s WHERE course_id=%(id)s""")
  sections = []
  for record in cursor:
    sections.append(record)
  cursor.close()

  cursor = g.conn.execute("""SELECT * FROM review r WHERE course_id=%(id)s""")
  reviews = []
  for record in cursor:
    reviews.append(record)
  cursor.close()

  return render_template('course.html', course=course, reviews=reviews)