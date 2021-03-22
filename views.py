from flask import Blueprint, request, render_template, flash, redirect, url_for
from db import g
from flask_login import login_required, current_user

views = Blueprint('views', __name__)

@views.route('/')
@login_required
def home():
  cursor = g.conn.execute("SELECT * FROM student;")
  students = []
  for record in cursor:
    students.append(record)
  return render_template("home.html", students=students)