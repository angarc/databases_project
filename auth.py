from flask import Blueprint, render_template, request, flash, redirect, url_for
from models import Student
from werkzeug.security import generate_password_hash, check_password_hash
from db import db, g
from flask_login import login_user, login_required, logout_user, current_user


auth = Blueprint('auth', __name__)

@auth.route('/login', methods=['GET', 'POST'])
def login():
  if request.method == 'POST':
    email    = request.form.get('email')
    password = request.form.get('password')

    user = Student.query.filter_by(email=email).first()
    if user == None:
      flash('Either email/password is incorrect.', category='danger')
      return render_template('login.html')
    else:
      if check_password_hash(user.password, password): 
        flash('Logged in successfully', category='success')
        login_user(user, remember=True)
        return redirect(url_for('views.home'))
      else:
        flash('Either email/password is incorrect.', category='danger')
        return render_template('login.html')


  return render_template('login.html', text="test")

@auth.route('/logout')
@login_required
def logout():
  logout_user()
  return redirect(url_for('auth.login'))

@auth.route('/sign-up', methods=['GET', 'POST'])
def sign_up():
  if request.method == 'POST':
    uni       = request.form.get('uni')
    fullName  = request.form.get('full_name')
    classYear = request.form.get('class_year')
    password1 = request.form.get('password1')
    password2 = request.form.get('password2')

    if len(uni) < 2:
      flash('uni name must be greater than 1 character', category='danger')  
    if len(fullName) < 2:
      flash('first name must be greater than 1 character', category='danger')
    elif password1 != password2:
      flash('passwords don\'t match', category='danger')
    elif len(password1) < 7:
      flash('password must be greater than 6 characters', category='danger')
    else:
      email = f"{uni}@columbia.edu"

      user = Student.query.filter_by(email=email).first()
      if user:
        flash('User already exists', category='danger')
        return render_template('sign_up.html')

      new_student = Student(uni=uni, full_name=fullName, class_year=classYear, email=email, password=generate_password_hash(password1, method='sha256'))
      db.session.add(new_student)
      db.session.commit()
      login_user(new_student, remember=True)
      flash('Account created', category='success')
      return redirect(url_for('views.home'))

  return render_template('sign_up.html')
