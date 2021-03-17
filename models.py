from db import db
from flask_login import UserMixin

class Student(db.Model, UserMixin):
  id         = db.Column(db.Integer, primary_key=True)
  uni        = db.Column(db.String(255))
  full_name  = db.Column(db.String(255))
  email      = db.Column(db.String(255))
  password   = db.Column(db.String(255))
  class_year = db.Column(db.Integer)
  is_active  = db.Column(db.Boolean)

  def is_active(self):
    return True