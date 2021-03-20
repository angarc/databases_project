from flask import Blueprint, request, render_template, flash, redirect, url_for
from db import g
from flask_login import login_required, current_user

swap_requests = Blueprint('swap_requests', __name__)

@swap_requests.route('/')
@login_required
def my_swap_requests():
  cursor = g.conn.execute(f"SELECT * FROM swap_request WHERE student_id={current_user.id}")
  context = dict(swap_requests=cursor)
  return render_template('swap-requests.html', **context)

@swap_requests.route('/<int:id>/matches')
@login_required
def swap_request_matches(id):
  owner_request = g.conn.execute("""SELECT * FROM swap_request WHERE id = %(id)s""", {'id': id}).first()

  if owner_request:
    cursor = g.conn.execute("""SELECT * FROM swap_request, student
    WHERE course_code=%(code)s AND start_time >= %(earliest)s AND end_time <= %(latest)s 
    AND requested_earliest_time <= %(offered_start_time)s AND requested_latest_time >= %(offered_end_time)s
    AND student.id = student_id AND student_id != %(owner_id)s;""", {
      'code': owner_request['course_code'],
      'earliest': owner_request['requested_earliest_time'],
      'latest': owner_request['requested_latest_time'],
      'offered_start_time': owner_request['start_time'],
      'offered_end_time': owner_request['end_time'],
      'owner_id': current_user.id
    })

    matching_requests = []
    for record in cursor:
      matching_requests.append(record)
    cursor.close()
    
  return render_template('swap-request-matches.html', matching_requests=matching_requests, matches_amount=len(matching_requests))

@swap_requests.route('/new')
@login_required
def new_swap_request():
  return render_template('new-swap-request.html')

@swap_requests.route('/save', methods=['POST'])
@login_required
def save_swap_request():
  course_code = request.form.get('course_code')
  course_name = request.form.get('course_name')
  instructor = request.form.get('instructor')
  start_time = request.form.get('start_time')
  end_time = request.form.get('end_time')
  requested_earliest_time = request.form.get('requested_earliest_time')
  requested_latest_time = request.form.get('requested_latest_time')

  if course_code and course_name and instructor and start_time and end_time:
    try: 
      cursor = g.conn.execute("""INSERT INTO swap_request(student_id, start_time, end_time, requested_earliest_time, requested_latest_time, instructor_name, course_name, course_code) 
      VALUES (%(student_id)s, %(start_time)s, %(end_time)s, %(requested_earliest_time)s, %(requested_latest_time)s, %(instructor)s, %(course_name)s, %(course_code)s);""", {
        'student_id': current_user.id,
        'start_time': start_time,
        'end_time': end_time,
        'requested_earliest_time': requested_earliest_time,
        'requested_latest_time': requested_latest_time,
        'instructor': instructor,
        'course_name': course_name,
        'course_code': course_code
      })
    except:
      flash('Bad data entered', category='danger')
      return redirect(url_for('swap_requests.new_swap_request'))


  flash('Saved swap request', category='success')
  return redirect(url_for('swap_requests.my_swap_requests'))

@swap_requests.route('/<int:id>/delete')
@login_required
def delete_request_matches(id):
  try:
    g.conn.execute("""DELETE FROM swap_request WHERE id=%(id)s AND student_id=%(student_id)s;""", {
      'id': id,
      'student_id': current_user.id
    })

    flash('Successfully deleted swap request', category='success')
    return redirect(url_for('swap_requests.my_swap_requests'))
  except:
    flash('Could not delete swap request', category='danger')
    return redirect(url_for('swap_requests.my_swap_requests'))
    
    
  