import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from flask_wtf import FlaskForm
from flask_marshmallow import Marshmallow
from marshmallow_sqlalchemy import ModelSchema
from wtforms import StringField, PasswordField, SubmitField, SelectField, DateField, TextAreaField, FileField, DecimalField
from wtforms.validators import DataRequired, Length, Optional, Email, EqualTo
from wtforms.fields.html5 import DateField, DateTimeLocalField
from flask_login import UserMixin, LoginManager
from flask_uploads import UploadSet, configure_uploads, patch_request_class, IMAGES
from marshmallow import fields
from datetime import datetime
from http import cookies

connection = 'mysql+pymysql://root:myroot@localhost/phone_shop'

basedir = os.path.abspath(os.path.dirname(__file__))

app = Flask(__name__)
app.config['SECRET_KEY'] = '098c75537d0816443c'
app.config['SQLALCHEMY_DATABASE_URI'] = connection
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.config['UPLOADED_PHOTOS_DEST'] = os.path.join(basedir, 'static/uploads')

db = SQLAlchemy(app)

bcrypt = Bcrypt(app)

ma = Marshmallow(app)

c = cookies.SimpleCookie()

login_manager = LoginManager(app)
login_manager.login_view = 'login'

upload = UploadSet('photos', IMAGES)
configure_uploads(app, upload)
patch_request_class(app)



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

class CategoryForm(FlaskForm):
    category = StringField('Category', validators=[DataRequired(), Length(max=20)])
    description = TextAreaField('Description')
    submit = SubmitField('Save')

class BrandForm(FlaskForm):
    brand = StringField('Brand', validators=[DataRequired(), Length(max=20)])
    description = TextAreaField('Description')
    submit = SubmitField('Save')


#Table
class tblUser(db.Model, UserMixin):
    id = db.Column(db.String(36), primary_key=True)
    firstname = db.Column(db.String(20), nullable=False)
    lastname = db.Column(db.String(20), nullable=False)
    username = db.Column(db.String(20), nullable=False, unique=True)
    gender = db.Column(db.String(1), nullable=False)
    birthdate = db.Column(db.Date, nullable=True)
    email = db.Column(db.String(100), nullable=False)
    password = db.Column(db.String(60), nullable=False)
    theme = db.Column(db.String(20), nullable=True, default='light')
    language = db.Column(db.String(20), nullable=True, default='english')
    publicId = db.Column(db.String(50), nullable=False)
    isAdmin = db.Column(db.Boolean, default=False)
    isConfirm = db.Column(db.Boolean, default=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)

category_brand = db.Table('category_brand',
    db.Column('category_id', db.String(36), db.ForeignKey('tbl_category.id')),
    db.Column('brand_id', db.String(36), db.ForeignKey('tbl_brand.id'))
)

class tblCategory(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    category = db.Column(db.String(50), nullable=False, unique=True)
    photo = db.Column(db.String(255), nullable=True, default='default.png')
    description = db.Column(db.Text(), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    properties = db.relationship('tblProperty', backref='properties', lazy=True, cascade="all, delete-orphan", single_parent=True)
    products = db.relationship('tblProduct', backref='products', lazy=True, cascade="all, delete-orphan", single_parent=True)
    brands = db.relationship('tblBrand', secondary=category_brand, backref='brands', lazy='dynamic')

class tblProperty(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    property = db.Column(db.String(50), nullable=False)
    type = db.Column(db.String(50), nullable=False)
    description = db.Column(db.Text(), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    categoryId = db.Column(db.String(36), db.ForeignKey('tbl_category.id'), nullable=False)

class tblProduct(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    product = db.Column(db.String(50), nullable=False)
    price = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    currency = db.Column(db.String(20), nullable=False)
    photo = db.Column(db.String(255), nullable=True, default='default.png')
    description = db.Column(db.Text(), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    brandId = db.Column(db.String(36), db.ForeignKey('tbl_brand.id'), nullable=False)
    categoryId = db.Column(db.String(36), db.ForeignKey('tbl_category.id'), nullable=False)
    values = db.relationship('tblValue', backref='values', lazy=True, cascade="all, delete-orphan", single_parent=True)
    
class tblValue(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    value = db.Column(db.String(50), nullable=False)
    description = db.Column(db.Text(), nullable=True, default='')
    productId = db.Column(db.String(36), db.ForeignKey('tbl_product.id'), nullable=False)
    propertyId = db.Column(db.String(36), db.ForeignKey('tbl_property.id'), nullable=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)

class tblBrand(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    brand = db.Column(db.String(20), nullable=False, unique=True)
    description = db.Column(db.Text(), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    categories = db.relationship('tblCategory', secondary=category_brand, backref='categories', lazy='dynamic')

class tblColor(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    color = db.Column(db.String(20), nullable=False)
    hex = db.Column(db.String(100), nullable=True, default= '')
    price = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    productId = db.Column(db.String(36), db.ForeignKey('tbl_product.id'), nullable=False)

class tblPhoto(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    src = db.Column(db.String(255), nullable=True, default='default.png')
    alt = db.Column(db.String(50), nullable=True)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    productId = db.Column(db.String(36), db.ForeignKey('tbl_product.id'), nullable=False)
    colorId = db.Column(db.String(36), db.ForeignKey('tbl_color.id'), nullable=False)

class tblActivity(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    activity = db.Column(db.String(50), nullable=False)
    type = db.Column(db.String(50), nullable=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)


class BrandSchema(ModelSchema):
    class Meta:
        model = tblBrand

class PropertySchema(ModelSchema):
    class Meta:
        model = tblProperty

class CategorySchema(ModelSchema):
    brands = fields.Nested(BrandSchema, many=True)
    properties = fields.Nested(PropertySchema(many=True), many=True)
    class Meta:
        model = tblCategory

        





from app import route