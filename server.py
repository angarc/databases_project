
"""
Columbia's COMS W4111.001 Introduction to Databases
Example Webserver
To run locally:
    python server.py
Go to http://localhost:8111 in your browser.
A debugger such as "pdb" may be helpful for debugging.
Read about it online.
"""
import os
# accessible as a variable in index.html:
from flask import Flask
from db import g, engine, db
from flask_login import LoginManager

tmpl_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'templates')
app = Flask(__name__, template_folder=tmpl_dir)

@app.before_request
def before_request():
  """
  This function is run at the beginning of every web request 
  (every time you enter an address in the web browser).
  We use it to setup a database connection that can be used throughout the request.

  The variable g is globally accessible.
  """
  try:
    g.conn = engine.connect()
  except:
    print("uh oh, problem connecting to database")
    import traceback; traceback.print_exc()
    g.conn = None

@app.teardown_request
def teardown_request(exception):
  """
  At the end of the web request, this makes sure to close the database connection.
  If you don't, the database could run out of memory!
  """
  try:
    g.conn.close()
  except Exception as e:
    pass

def create_database(app):
  if not os.path.exists("website/columbia_project"):
    db.create_all(app=app)


if __name__ == "__main__":
  import click

  @click.command()
  @click.option('--debug', is_flag=True)
  @click.option('--threaded', is_flag=True)
  @click.argument('HOST', default='0.0.0.0')
  @click.argument('PORT', default=8111, type=int)
  def run(debug, threaded, host, port):
    """
    This function handles command line parameters.
    Run the server using:

        python server.py

    Show the help text using:

        python server.py --help

    """

    app.config['SECRET_KEY'] = '7ars9t8s9t8dlnew3nn234587gth987&)^&^%P'
    app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://ag4219:877492@34.73.36.248/project1'
    db.init_app(app)

    from models import Student

    create_database(app)

    from views import views
    from auth import auth
    from students import students
    from swap_requests import swap_requests
    from courses import courses
    from instructors import instructors

    app.register_blueprint(views, url_prefix='/')
    app.register_blueprint(auth, url_prefix='/')
    app.register_blueprint(students, url_prefix='/students/')
    app.register_blueprint(swap_requests, url_prefix='/swap-requests/')
    app.register_blueprint(courses, url_prefix='/courses/')
    app.register_blueprint(instructors, url_prefix='/instructors/')

    login_manager = LoginManager()
    login_manager.login_view = 'auth.login'
    login_manager.init_app(app)

    @login_manager.user_loader
    def load_user(id):
      user = Student.query.get(int(id))
      return user

    HOST, PORT = host, port
    print("running on %s:%d" % (HOST, PORT))
    app.run(host=HOST, port=PORT, debug=debug, threaded=threaded)

  run()
