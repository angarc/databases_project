from sqlalchemy import *
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.pool import NullPool
from flask import Flask, g

# The following is a dummy URI that does not connect to a valid database. You will need to modify it to connect to your Part 2 database in order to use the data.
#
# XXX: The URI should be in the format of: 
#
#     postgresql://USER:PASSWORD@34.73.36.248/project1
#
# For example, if you had username zy2431 and password 123123, then the following line would be:
#
#     DATABASEURI = "postgresql://zy2431:123123@34.73.36.248/project1"
#
DATABASEURI = "postgresql://ag4219:877492@34.73.36.248/project1"

# What's the difference???
engine = create_engine(DATABASEURI)
db = SQLAlchemy()

