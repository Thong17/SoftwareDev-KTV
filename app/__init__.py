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
from flask_wtf.file import FileAllowed, FileField, FileRequired
from flask_login import UserMixin, LoginManager
from flask_uploads import UploadSet, configure_uploads, patch_request_class, IMAGES
from marshmallow import fields
from datetime import datetime
import time
from http import cookies

connection = 'mysql+pymysql://root:myroot@localhost/camping_cave'

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

#Custome function
def delete_photo(folder, photo):
    photo = basedir + '/static/' + folder + "/" + photo
    try:
        os.remove(photo)
    except:
        return 'No file found'


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
    photo = FileField('Photo', validators=[FileAllowed(upload), Optional()])
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

class ProfileForm(FlaskForm):
    status = SelectField('Status', choices=[('Single', 'Single'), ('In Relationship', 'In Relationship'), ('Married', 'Married')])
    phone = StringField('Phone', validators=[Optional(), Length(min=6, max=13)])
    company = StringField('Company', validators=[Optional(), Length(min=2 ,max=20)])
    hometown = StringField('Hometown', validators=[Optional(), Length(min=2 ,max=255)])
    location = StringField('Location', validators=[Optional(), Length(max=255)])
    photo = FileField('Photo', validators=[FileAllowed(upload), Optional()])
    bio = TextAreaField('Bio', validators=[Optional()])
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
    token = db.Column(db.String(36), nullable=True, default='')
    drawer = db.Column(db.String(36), nullable=True, default='')
    isAdmin = db.Column(db.Boolean, default=False)
    isConfirm = db.Column(db.Boolean, default=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    profile = db.relationship('tblProfile', backref='profile', lazy=True)
    sale = db.relationship('tblTransaction', backref='sale', lazy=True)
    drawers = db.relationship('tblDrawer', backref='drawers', lazy=True)

class tblProfile(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    photo = db.Column(db.String(255), nullable=True, default='default.png')
    status = db.Column(db.String(20), nullable=True, default='Single')
    phone = db.Column(db.String(13), nullable=True, default='')
    company = db.Column(db.String(20), nullable=True, default='')
    hometown = db.Column(db.String(255), nullable=True, default='')
    location = db.Column(db.String(255), nullable=True, default='')
    bio = db.Column(db.Text(), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)

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
    properties = db.relationship('tblProperty', backref='properties', lazy=True, cascade='save-update, merge, delete', single_parent=True)
    products = db.relationship('tblProduct', backref='productOfCategory', lazy=True, cascade='save-update, merge, delete', single_parent=True)
    brands = db.relationship('tblBrand', secondary=category_brand, backref='brands', lazy='dynamic')

class tblProperty(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    property = db.Column(db.String(50), nullable=False)
    type = db.Column(db.String(50), nullable=False)
    description = db.Column(db.Text(), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    categoryId = db.Column(db.String(36), db.ForeignKey('tbl_category.id'), nullable=False)
    values = db.relationship('tblValue', backref='property', lazy=True, cascade='save-update, merge, delete', single_parent=True)

class tblProduct(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    product = db.Column(db.String(50), nullable=False)
    isStock = db.Column(db.Boolean, default=True)
    price = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    currency = db.Column(db.String(20), nullable=False)
    discount = db.Column(db.String(3), nullable=True, default='')
    period = db.Column(db.Date, nullable=True)
    photo = db.Column(db.String(255), nullable=True, default='default.png')
    description = db.Column(db.Text(), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    brandId = db.Column(db.String(36), db.ForeignKey('tbl_brand.id'), nullable=False)
    categoryId = db.Column(db.String(36), db.ForeignKey('tbl_category.id'), nullable=False)
    appearance = db.relationship('tblAppearance', backref='appearance', lazy=True, cascade='save-update, merge, delete', single_parent=True)
    values = db.relationship('tblValue', backref='product', lazy=True, cascade='save-update, merge, delete', single_parent=True)
    photos = db.relationship('tblPhoto', backref='photosOfProduct', lazy=True, cascade='save-update, merge, delete', single_parent=True)
    colors = db.relationship('tblColor', backref='colorsOfProduct', lazy=True, cascade='save-update, merge, delete', single_parent=True)
    stocks = db.relationship('tblStock', backref='stocksOfProduct', lazy=True, cascade='save-update, merge, delete', single_parent=True)

class tblStock(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    cost = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    currency = db.Column(db.String(20), nullable=False)
    rate = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    quantity = db.Column(db.Numeric(10,0), nullable=True, default=0)
    color = db.Column(db.String(36), nullable=True)
    adjust = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    productId = db.Column(db.String(36), db.ForeignKey('tbl_product.id'), nullable=False)
    soq = db.relationship('tblQuantity', backref='soq', lazy=True, cascade='save-update, merge, delete', single_parent=True)


class tblAppearance(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    width = db.Column(db.String(50), nullable=True)
    height = db.Column(db.String(50), nullable=True)
    weight = db.Column(db.String(50), nullable=True)
    depth = db.Column(db.String(50), nullable=True)
    productId = db.Column(db.String(36), db.ForeignKey('tbl_product.id'), nullable=False)

class tblValue(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    value = db.Column(db.String(50), nullable=False)
    price = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    currency = db.Column(db.String(20), nullable=False)
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
    products = db.relationship('tblProduct', backref='productOfBrand', lazy=True, cascade='save-update, merge, delete', single_parent=True)
    categories = db.relationship('tblCategory', secondary=category_brand, backref='categories', lazy='dynamic')

class tblColor(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    color = db.Column(db.String(20), nullable=False)
    hex = db.Column(db.String(100), nullable=True, default= '')
    price = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    productId = db.Column(db.String(36), db.ForeignKey('tbl_product.id'), nullable=False)
    photos = db.relationship('tblPhoto', backref='photosOfColor', lazy=True, cascade='save-update, merge, delete', single_parent=True)

class tblPhoto(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    src = db.Column(db.String(255), nullable=True, default='default.png')
    alt = db.Column(db.String(50), nullable=True)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    productId = db.Column(db.String(36), db.ForeignKey('tbl_product.id'), nullable=False)
    colorId = db.Column(db.String(36), db.ForeignKey('tbl_color.id'), nullable=False)

class tblAdvertise(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    src = db.Column(db.String(255), nullable=False)
    alt = db.Column(db.String(50), nullable=True)
    main = db.Column(db.Boolean, default=True)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)

class tblDrawer(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    key = db.Column(db.String(36), nullable=True, default='')
    rate = db.Column(db.Numeric(10,2), nullable=True, default=4000)
    counter = db.Column(db.String(50), nullable=True, default='')
    startCost = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    startedOn = db.Column(db.DateTime, default=datetime.utcnow)
    endedOn = db.Column(db.DateTime, nullable=True)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    moneys = db.relationship('tblMoney', backref='moneys', lazy=True, cascade='save-update, merge, delete', single_parent=True)
    payments = db.relationship('tblPayment', backref='payments', lazy=True, cascade='save-update, merge, delete', single_parent=True)

class tblMoney(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    money = db.Column(db.Numeric(10,0), nullable=True, default=0.00)
    currency = db.Column(db.String(20), nullable=False)
    value = db.Column(db.Numeric(10,5), nullable=True, default=0.00000)
    unit = db.Column(db.Numeric(10,0), nullable=True, default=0)
    drawerId = db.Column(db.String(36), db.ForeignKey('tbl_drawer.id'), nullable=False)

class tblQuantity(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    stock = db.Column(db.Numeric(10,0), nullable=True, default=0)
    quantity = db.Column(db.Numeric(10,0), nullable=True, default=0)
    stockId = db.Column(db.String(36), db.ForeignKey('tbl_stock.id'), nullable=False)
    transactionId = db.Column(db.String(36), db.ForeignKey('tbl_transaction.id'), nullable=False)

class tblCustomer(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    firstname = db.Column(db.String(20), nullable=True)
    lastname = db.Column(db.String(20), nullable=True)
    gender = db.Column(db.String(1), nullable=True)
    birthdate = db.Column(db.Date, nullable=True)
    email = db.Column(db.String(100), nullable=True)
    phone = db.Column(db.String(20), nullable=True)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)

payment = db.Table('payment',
    db.Column('payment_id', db.String(36), db.ForeignKey('tbl_payment.id')),
    db.Column('transaction_id', db.String(36), db.ForeignKey('tbl_transaction.id'))
)

class tblTransaction(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    isComplete = db.Column(db.Boolean, default=False)
    discount = db.Column(db.String(3), nullable=True, default='')
    price = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    amount = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    quantity = db.Column(db.Numeric(10,0), nullable=True, default=0)
    profit = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    description = db.Column(db.Text(), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    quantities = db.relationship('tblQuantity', backref='quantities', lazy=True, cascade='save-update, merge, delete', single_parent=True)

class tblPayment(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    isComplete = db.Column(db.Boolean, default=False)
    invoice = db.Column(db.String(20), nullable=True)
    amount = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    drawerId = db.Column(db.String(36), db.ForeignKey('tbl_drawer.id'), nullable=False)
    transactions = db.relationship('tblTransaction', secondary=payment, backref='transactions', lazy='dynamic')

class tblActivity(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    activity = db.Column(db.String(50), nullable=False)
    type = db.Column(db.String(50), nullable=False)
    activityOn = db.Column(db.String(50), nullable=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)



class BrandSchema(ModelSchema):
    class Meta:
        model = tblBrand

class MoneySchema(ModelSchema):
    class Meta:
        model = tblMoney

class PropertySchema(ModelSchema):
    class Meta:
        model = tblProperty

class CategorySchema(ModelSchema):
    brands = fields.Nested(BrandSchema, many=True)
    properties = fields.Nested(PropertySchema(many=True), many=True)
    class Meta:
        model = tblCategory

class DrawerSchema(ModelSchema):
    moneys = fields.Nested(MoneySchema, many=True)
    class Meta:
        model = tblDrawer

class ValueSchema(ModelSchema):
    class Meta:
        model = tblValue

class PhotoSchema(ModelSchema):
    class Meta:
        model = tblPhoto

class QuantitySchema(ModelSchema):
    class Meta:
        quantity = tblQuantity

class ColorSchema(ModelSchema):
    photos = fields.Nested(PhotoSchema, many=True)
    class Meta:
        model = tblColor

class TransactionSchema(ModelSchema):
    quantities = fields.Nested(QuantitySchema, many=True)
    class Meta:
        model = tblTransaction

class StockSchema(ModelSchema):
    colors = fields.Nested(ColorSchema, many=True)
    class Meta:
        model = tblStock

class ProductSchema(ModelSchema):
    stocks = fields.Nested(StockSchema, many=True)
    photos = fields.Nested(PhotoSchema, many=True)
    values = fields.Nested(ValueSchema(many=True), many=True)
    colors = fields.Nested(ColorSchema, many=True)
    properties = fields.Nested(CategorySchema(many=True), many=True)
    class Meta:
        model = tblProduct

class PaymentSchema(ModelSchema):
    transactions = fields.Nested(TransactionSchema, many=True)
    class Meta:
        model = tblPayment

#Custome datetime
def utc2local (utc):
    epoch = time.mktime(utc.timetuple())
    offset = datetime.fromtimestamp (epoch) - datetime.utcfromtimestamp (epoch)
    return utc + offset
        
from app import route