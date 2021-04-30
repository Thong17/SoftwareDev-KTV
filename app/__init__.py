import os
from app.config import Config
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.types import PickleType
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
from uuid import uuid4
from http import cookies
import pytz
from pytz import timezone
import tzlocal 

def datetimefilter(value, format="%I:%M %p"):
    tz = pytz.timezone('Asia/Phnom_Penh') # timezone you want to convert to from UTC
    utc = pytz.timezone('UTC')  
    value = utc.localize(value, is_dst=None).astimezone(pytz.utc)
    local_dt = value.astimezone(tz)
    return local_dt.strftime(format)

db = SQLAlchemy()

bcrypt = Bcrypt()

ma = Marshmallow()

login_manager = LoginManager()
login_manager.login_view = 'route.login'

upload = UploadSet('photos', IMAGES)

def create_app(config_class=Config):
    app = Flask(__name__)
    app.config.from_object(Config)
    app.jinja_env.filters['datetimefilter'] = datetimefilter

    db.init_app(app)

    with app.app_context():
        db.create_all()
        stores = tblStore.query.all()
        if not stores:
            id = str(uuid4())
            store = tblStore(id=id)
            db.session.add(store)
            floor = tblFloor(id=str(uuid4()), floor='GF', storeId=id)
            db.session.add(floor)

            uid = str(uuid4())
            hashed_password = bcrypt.generate_password_hash('admin123').decode('utf-8')

            User = tblUser(id=uid, username='Admin', password=hashed_password, isAdmin=True, isConfirm=True, publicId=str(uuid4()))
            db.session.add(User)
            
            db.session.commit()

            Profile = tblProfile(id=str(uuid4()), createdBy=uid)
            db.session.add(Profile)

            Role = tblRole(id=str(uuid4()), role='Administration', description='Admin, Cashier, Stock, Editor, Report', isDefault=True, createdBy=uid)
            db.session.add(Role)
            User.roles.append(Role)

            Customer = tblCustomer(id=str(uuid4()), name='Customer', createdBy=uid)
            db.session.add(Customer)
            db.session.commit()


    bcrypt.init_app(app)
    ma.init_app(app)
    login_manager.init_app(app)
    
    configure_uploads(app, upload)
    patch_request_class(app)

    from app.routes.route import route
    app.register_blueprint(route)

    return app

#Custome function
def delete_photo(folder, photo):
    photo = os.path.abspath(os.path.dirname(__file__)) + '/static/' + folder + "/" + photo
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

class RoleForm(FlaskForm):
    role = StringField('Role', validators=[DataRequired(), Length(max=20)])
    description = TextAreaField('Description')
    submit = SubmitField('Add Role')

class ExpenseForm(FlaskForm):
    expense = StringField('Expense', validators=[DataRequired(), Length(max=50)])
    amount = DecimalField('Amount', validators=[DataRequired()])
    submit = SubmitField('Add Expense')

class StoreForm(FlaskForm):
    store = StringField('Store Property', validators=[DataRequired(), Length(max=50)])
    price = DecimalField('Price', validators=[DataRequired()])
    submit = SubmitField('Add Room')

class FloorForm(FlaskForm):
    floor = StringField('Floor', validators=[DataRequired(), Length(max=50)])
    submit = SubmitField('')

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
user_role = db.Table('user_role',
    db.Column('user_id', db.String(36), db.ForeignKey('tbl_user.id')),
    db.Column('role_id', db.String(36), db.ForeignKey('tbl_role.id'))
)

class tblStore(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    store = db.Column(db.String(100), nullable=True, default='Store Name')
    phone = db.Column(db.String(50), nullable=True, default='')
    location = db.Column(db.Text(), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    floors = db.relationship('tblFloor', backref='floors', lazy=True)

class tblFloor(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    floor = db.Column(db.String(100), nullable=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    storeId = db.Column(db.String(36), db.ForeignKey('tbl_store.id'), nullable=False)
    rooms = db.relationship('tblRoom', backref='rooms', lazy=True)

class tblRoom(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    room = db.Column(db.String(100), nullable=False, unique=True)
    price = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    hour = db.Column(db.String(100), nullable=True, default='1h')
    status = db.Column(db.String(100), nullable=True, default='Open')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    floorId = db.Column(db.String(36), db.ForeignKey('tbl_floor.id'), nullable=False)
    order = db.relationship('tblOrder', backref='order', lazy=True)

# Working on Order room and invoice
class tblOrder(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    isCompleted = db.Column(db.Boolean, default=False)
    isProcessed = db.Column(db.Boolean, default=False)
    orderOn = db.Column(db.DateTime, default=datetime.utcnow)
    orderTo = db.Column(db.DateTime, default=datetime.utcnow)
    roomId = db.Column(db.String(36), db.ForeignKey('tbl_room.id'), nullable=False)
    orderedBy = db.Column(db.String(36), db.ForeignKey('tbl_customer.id'), nullable=False)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    checkin = db.relationship('tblCheckin', backref='checkin', lazy=True, uselist=False)
    checkout = db.relationship('tblCheckout', backref='checkout', lazy=True, uselist=False)

class tblCheckin(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    startedOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    orderId = db.Column(db.String(36), db.ForeignKey('tbl_order.id'), nullable=False)
    paymentId = db.Column(db.String(36), db.ForeignKey('tbl_payment.id'), nullable=False)

class tblCheckout(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    endedOn = db.Column(db.DateTime, default=datetime.utcnow)
    totalHour = db.Column(db.Numeric(10), default=0)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    orderId = db.Column(db.String(36), db.ForeignKey('tbl_order.id'), nullable=False)


payment = db.Table('payment',
    db.Column('payment_id', db.String(36), db.ForeignKey('tbl_payment.id')),
    db.Column('transaction_id', db.String(36), db.ForeignKey('tbl_transaction.id'))
)

class tblTransaction(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    isComplete = db.Column(db.Boolean, default=False)
    isEditable = db.Column(db.Boolean, default=True)
    discount = db.Column(db.String(3), nullable=True, default='')
    price = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    amount = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    quantity = db.Column(db.Numeric(10,0), nullable=True, default=0)
    profit = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    description = db.Column(db.Text(), nullable=True, default='')
    product = db.Column(db.String(36), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    quantities = db.relationship('tblQuantity', backref='quantities', lazy=True, cascade='save-update, merge, delete', single_parent=True)

owe = db.Table('owe',
    db.Column('payment_id', db.String(36), db.ForeignKey('tbl_payment.id')),
    db.Column('owe_id', db.String(36), db.ForeignKey('tbl_owe.id'))
)

owe_inv = db.Table('owe_inv',
    db.Column('payment_id', db.String(36), db.ForeignKey('tbl_payment.id')),
    db.Column('invoice_id', db.String(36), db.ForeignKey('tbl_invoice.id'))
)

class tblPayment(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    isComplete = db.Column(db.Boolean, default=False)
    invoice = db.Column(db.String(100), nullable=True)
    amount = db.Column(db.Numeric(10,4), nullable=True, default=0.00)
    paid = db.Column(db.Numeric(10,4), nullable=True, default=0.00)
    remain = db.Column(db.Numeric(10,4), nullable=True, default=0.00)
    receive = db.Column(db.String(100), nullable=True, default='0,0')
    rate = db.Column(db.Numeric(10,4), nullable=True, default=4000)
    change = db.Column(db.Numeric(10,4), nullable=True, default=0.00)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    orderedBy = db.Column(db.String(36), db.ForeignKey('tbl_customer.id'), nullable=False)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    drawerId = db.Column(db.String(36), db.ForeignKey('tbl_drawer.id'), nullable=False)
    orderPayment = db.relationship('tblCheckin', backref='orderPayment', lazy=True, cascade='save-update, merge, delete', single_parent=True)
    transactions = db.relationship('tblTransaction', secondary=payment, backref='transactions', lazy='dynamic')
    owePayments = db.relationship('tblOwe', secondary=owe, backref='owePayments', lazy='dynamic')
    invoicePayments = db.relationship('tblInvoice', secondary=owe_inv, backref='invoicePayments', lazy='dynamic')

class tblInvoice(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    amount = db.Column(db.Numeric(10,4), nullable=True, default=0.00)
    paid = db.Column(db.Numeric(10,4), nullable=True, default=0.00)
    remain = db.Column(db.Numeric(10,4), nullable=True, default=0.00)
    receive = db.Column(db.String(100), nullable=True, default='0,0')
    rate = db.Column(db.Numeric(10,4), nullable=True, default=4000)
    change = db.Column(db.Numeric(10,4), nullable=True, default=0.00)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    orderedBy = db.Column(db.String(36), db.ForeignKey('tbl_customer.id'), nullable=False)


class tblOwe(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    invoice = db.Column(db.String(100), nullable=True)
    amount = db.Column(db.Numeric(10,4), nullable=True, default=0.00)
    rate = db.Column(db.Numeric(10,4), nullable=True)
    paid = db.Column(db.Numeric(10,4), nullable=True, default=0.00)
    remain = db.Column(db.Numeric(10,4), nullable=True, default=0.00)
    receive = db.Column(db.String(100), nullable=True, default='0,0')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    owedBy = db.Column(db.String(36), db.ForeignKey('tbl_customer.id'), nullable=False)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)

class tblUser(db.Model, UserMixin):
    id = db.Column(db.String(36), primary_key=True)
    firstname = db.Column(db.String(100), nullable=True, default='')
    lastname = db.Column(db.String(100), nullable=True, default='')
    username = db.Column(db.String(100), nullable=False, unique=True)
    gender = db.Column(db.String(1), nullable=True, default='')
    birthdate = db.Column(db.Date, nullable=True)
    email = db.Column(db.String(100), nullable=True, default='')
    password = db.Column(db.String(60), nullable=False)
    theme = db.Column(db.String(100), nullable=True, default='light')
    language = db.Column(db.String(100), nullable=True, default='english')
    publicId = db.Column(db.String(50), nullable=False)
    token = db.Column(db.String(36), nullable=True, default='')
    drawer = db.Column(db.String(36), nullable=True, default='')
    isConfirm = db.Column(db.Boolean, default=False)
    isAdmin = db.Column(db.Boolean, default=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    profile = db.relationship('tblProfile', backref='profile', lazy=True)
    sale = db.relationship('tblTransaction', backref='sale', lazy=True)
    drawers = db.relationship('tblDrawer', backref='drawers', lazy=True)

class tblRole(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    role = db.Column(db.String(100), nullable=False, unique=True)
    description = db.Column(db.Text(), nullable=True, default='')
    isDefault = db.Column(db.Boolean, default=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    roles = db.relationship('tblUser', secondary=user_role, backref='roles', lazy='dynamic')

class tblProfile(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    photo = db.Column(db.String(255), nullable=True, default='default.png')
    status = db.Column(db.String(100), nullable=True, default='Single')
    phone = db.Column(db.String(13), nullable=True, default='')
    company = db.Column(db.String(100), nullable=True, default='')
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
    barcode = db.Column(db.String(30), nullable=True)
    isStock = db.Column(db.Boolean, default=True)
    price = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    currency = db.Column(db.String(100), nullable=False)
    priceCurrency = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    discount = db.Column(db.String(3), nullable=True, default='')
    period = db.Column(db.Date, nullable=True)
    photo = db.Column(db.String(255), nullable=True, default='default.png')
    description = db.Column(db.Text(), nullable=True, default='')
    listFavorite = db.Column(db.Text(), nullable=True, default='[]')
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
    costCurrency = db.Column(db.Numeric(16,2), nullable=True, default=0.00)
    currency = db.Column(db.String(100), nullable=False)
    rate = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    quantity = db.Column(db.Numeric(10,0), nullable=True, default=0)
    total = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    color = db.Column(db.String(36), nullable=True)
    expire = db.Column(db.Date, nullable=True)
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
    material = db.Column(db.String(50), nullable=True)
    productId = db.Column(db.String(36), db.ForeignKey('tbl_product.id'), nullable=False)

class tblValue(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    value = db.Column(db.String(50), nullable=False)
    price = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    currency = db.Column(db.String(100), nullable=False)
    priceCurrency = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    description = db.Column(db.Text(), nullable=True, default='')
    productId = db.Column(db.String(36), db.ForeignKey('tbl_product.id'), nullable=False)
    propertyId = db.Column(db.String(36), db.ForeignKey('tbl_property.id'), nullable=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)

class tblBrand(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    brand = db.Column(db.String(100), nullable=False, unique=True)
    description = db.Column(db.Text(), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    products = db.relationship('tblProduct', backref='productOfBrand', lazy=True, cascade='save-update, merge, delete', single_parent=True)
    categories = db.relationship('tblCategory', secondary=category_brand, backref='categories', lazy='dynamic')

class tblColor(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    color = db.Column(db.String(100), nullable=False)
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
    startCost = db.Column(db.Numeric(16,2), nullable=True, default=0.00)
    startedOn = db.Column(db.DateTime, default=datetime.utcnow)
    endedOn = db.Column(db.DateTime, nullable=True)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    moneys = db.relationship('tblMoney', backref='moneys', lazy=True, cascade='save-update, merge, delete', single_parent=True)
    payments = db.relationship('tblPayment', backref='payments', lazy=True, cascade='save-update, merge, delete', single_parent=True)

class tblMoney(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    money = db.Column(db.Numeric(16,0), nullable=True, default=0.00)
    currency = db.Column(db.String(100), nullable=False)
    value = db.Column(db.Numeric(16,5), nullable=True, default=0.00000)
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
    name = db.Column(db.String(100), nullable=True, default='', unique=True)
    birthdate = db.Column(db.Date, nullable=True)
    phone = db.Column(db.String(100), nullable=True, default='')
    description = db.Column(db.Text(), nullable=True, default='')
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)
    customerOrder = db.relationship('tblOrder', backref='customerOrder', lazy=True)
    customerPayment = db.relationship('tblPayment', backref='customerPayment', lazy=True)
    customerOwe = db.relationship('tblOwe', backref='customerOwe', lazy=True)
    invoiceOwe = db.relationship('tblInvoice', backref='invoiceOwe', lazy=True)


class tblActivity(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    activity = db.Column(db.Text(), nullable=False)
    type = db.Column(db.String(50), nullable=False)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)

class tblOutcome(db.Model):
    id = db.Column(db.String(36), primary_key=True)
    isStock = db.Column(db.Boolean, default=True)
    description = db.Column(db.Text(), nullable=True, default='')
    amount = db.Column(db.Numeric(10,2), nullable=True, default=0.00)
    createdOn = db.Column(db.DateTime, default=datetime.utcnow)
    createdBy = db.Column(db.String(36), db.ForeignKey('tbl_user.id'), nullable=False)

class ProfileSchema(ModelSchema):
    class Meta:
        model = tblProfile

class AppearanceSchema(ModelSchema):
    class Meta:
        model = tblAppearance

class UserSchema(ModelSchema):
    profile = fields.Nested(ProfileSchema(many=True), many=True)
    class Meta:
        model = tblUser

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
        model = tblQuantity

class StoreSchema(ModelSchema):
    class Meta:
        model = tblStore

class FloorSchema(ModelSchema):
    class Meta:
        model = tblFloor

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
    appearance = fields.Nested(AppearanceSchema, many=True)
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

class ActivitySchema(ModelSchema):
    user = fields.Nested(UserSchema, many=True)
    class Meta:
        model = tblActivity

class RoleSchema(ModelSchema):
    class Meta:
        model = tblRole

class OweSchema(ModelSchema):
    owePayments = fields.Nested(PaymentSchema, many=True)
    class Meta:
        model = tblOwe

class CustomerSchema(ModelSchema):
    customerPayment = fields.Nested(PaymentSchema, many=True)
    customerOwe = fields.Nested(OweSchema, many=True)
    class Meta:
        model = tblCustomer

class OrderSchema(ModelSchema):
    customerOrder = fields.Nested(CustomerSchema)
    class Meta:
        model = tblOrder

class RoomSchema(ModelSchema):
    order = fields.Nested(OrderSchema, many=True)
    class Meta:
        model = tblRoom

class CheckoutSchema(ModelSchema):
    class Meta:
        model = tblCheckout

class OutcomeSchema(ModelSchema):
    class Meta:
        model = tblOutcome

#Custome datetime
def utc2local (utc):
    epoch = time.mktime(utc.timetuple())
    offset = datetime.fromtimestamp (epoch) - datetime.utcfromtimestamp (epoch)
    return utc + offset
        
