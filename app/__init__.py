from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField, SelectField, DateField
from wtforms.validators import DataRequired, Length, Optional, Email, EqualTo
from wtforms.fields.html5 import DateField, DateTimeLocalField
from flask_login import UserMixin, LoginManager
import os
from datetime import datetime

connection = 'mysql+pymysql://root@localhost/phone_shop'

app = Flask(__name__)
app.config['SECRET_KEY'] = '098c75537d0816443c'
app.config['SQLALCHEMY_DATABASE_URI'] = connection
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True

db = SQLAlchemy(app)

bcrypt = Bcrypt(app)

login_manager = LoginManager(app)
login_manager.login_view = 'login'



# Flask Form
class LoginForm(FlaskForm, UserMixin):
    username = StringField('Username', validators=[DataRequired(), Length(min=3, max=20)])
    password = PasswordField('Password', validators=[DataRequired(), Length(min=5, max=15)])
    submit = SubmitField('Login')

class RegisterForm(FlaskForm):
    firstname = StringField('Firstname', validators=[DataRequired(), Length(max=20)])
    lastname = StringField('Lastname', validators=[DataRequired(), Length(max=20)])
    username = StringField('Username', validators=[DataRequired(), Length(min=2, max=20)])
    gender = SelectField('Gender', choices=[('M', 'Male'), ('F', 'Female')], validators=[DataRequired()])
    birthdate = DateField('Date of Birth', validators=[Optional()])
    email = StringField('Email', validators=[DataRequired(), Email()])
    password = PasswordField('Password', validators=[DataRequired(), Length(min=8, max=20)])
    confirm = PasswordField('Confirm Password', validators=[DataRequired(), EqualTo('password')])
    submit = SubmitField('Register')

class tblUser(db.Model, UserMixin):
    id = db.Column(db.String(36), primary_key=True)
    firstname = db.Column(db.String(20), nullable=False)
    lastname = db.Column(db.String(20), nullable=False)
    username = db.Column(db.String(20), nullable=False)
    gender = db.Column(db.String(1), nullable=False)
    birthdate = db.Column(db.Date, nullable=True)
    email = db.Column(db.String(100), nullable=False)
    password = db.Column(db.String(60), nullable=False)
    publicId = db.Column(db.String(50), nullable=False)
    isAdmin = db.Column(db.Boolean, default=False)
    isConfirm = db.Column(db.Boolean, default=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)


from app import route