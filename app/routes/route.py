from app import bcrypt, db, login_manager, upload, delete_photo, utc2local, datetimefilter
from app import tblUser, tblBrand, tblCategory, tblProperty, tblProduct, tblColor, tblPhoto, tblValue, tblStock, tblProfile, tblDrawer, tblTransaction, tblQuantity, tblMoney, tblCustomer, tblPayment, tblAdvertise, tblOutcome, tblActivity, tblRole, tblAppearance, tblFloor, tblStore, tblRoom, tblOrder, tblCheckout, tblCheckin, tblOwe, tblInvoice
from app import LoginForm, RegisterForm, CategoryForm, BrandForm, ProfileForm, RoleForm, ExpenseForm, StoreForm, FloorForm
from app import CategorySchema, ProductSchema, ColorSchema, BrandSchema, StockSchema, MoneySchema, DrawerSchema, TransactionSchema, PaymentSchema, ActivitySchema, RoleSchema, UserSchema, FloorSchema, StoreSchema, RoomSchema, OrderSchema, CheckoutSchema, OutcomeSchema, CustomerSchema, OweSchema
from flask import render_template, redirect, request, jsonify, Blueprint, url_for, flash
from flask_login import login_user, logout_user, login_required, current_user
from uuid import uuid4
import json, os, time, inspect, simplejson, operator
from datetime import datetime, timedelta, date
from sqlalchemy import func, Date, cast
from decimal import Decimal
from functools import wraps
from app.config import mysqlObj

route = Blueprint('route', __name__)

def parametrized(dec):
    def layer(*args, **kwargs):
        def repl(f):
            return dec(f, *args, **kwargs)
        return repl
    return layer


@parametrized
def is_authorized(f, r):
    def wrap(*args, **kwargs):
        if not request.referrer:
            referrer = '/'
        else:
            referrer = request.referrer
        if current_user.is_authenticated and current_user.roles:
            permissions = current_user.roles[0].description.split(', ')
            if r in permissions:
                return f(*args, **kwargs)
            else:
                flash('You may not have permission to enter this page', 'warning')
                return redirect(referrer)
        else:
            flash('You are not allowed to enter this route!', 'warning')
            return redirect(referrer)
    wrap.__name__ = f.__name__
    return wrap

@parametrized
def is_confirmed(f):
    def wrap(*args, **kwargs):
        if not request.referrer:
            referrer = '/'
        else:
            referrer = request.referrer
        if current_user.isConfirm:
            return f(*args, **kwargs)
        else:
            flash('You are not allowed to enter this route!', 'warning')
            return redirect(referrer)
    wrap.__name__ = f.__name__
    return wrap


@login_manager.user_loader
def load_user(id):
    return tblUser.query.get(id)


# Flask API
@route.route('/api/products')
def api_products():
    products = tblProduct.query.all()
    schema = ProductSchema()
    json = schema.dump(products, many=True)

    for product in json:
        category = tblCategory.query.get(product['productOfCategory'])
        brand = tblBrand.query.get(product['productOfBrand'])
        product['brand'] = brand.brand
        product['category'] = category.category

    return jsonify(json)

@route.route('/api/product', methods=['POST'])
def api_product():
    products = tblProduct.query.all()
    json_products = request.get_json()
    results = []
    for item in json_products:
        product = tblProduct.query.get(item['id'])
        schema = ProductSchema()
        Product = schema.dump(product)
        Product['qty'] = item['qty']
        results.append(Product)
    
    return jsonify(results)








@route.route('/login', methods=['POST', 'GET'])
def login():
    form = LoginForm()
    if request.method == 'POST':
        msg = {
            'username': [],
            'password': [],
            'redirect': ''
        }
        if form.validate_on_submit():
            username = request.form['username']
            password = request.form['password']
            try:
                user = tblUser.query.filter_by(username=username).first()
                while user is not None:
                    isMatch = bcrypt.check_password_hash(
                        user.password, password)
                    if isMatch is True:
                        Activity = tblActivity(id=str(
                            uuid4()), activity=user.username+' has logged in', type='Login', createdBy=user.id)
                        db.session.add(Activity)
                        db.session.commit()
                        login_user(user)
                        msg['redirect'] = '/'
                        return jsonify(msg)
                    msg['password'].append('Password does not match')
                    return jsonify(msg)
                msg['username'].append('Username does not exist')
                return jsonify(msg)
            except:
                msg['username'].append('Connection is not available')
                return jsonify(msg)
        for fieldName, errorMessages in form.errors.items():
            for err in errorMessages:
                msg[fieldName].append(err)
        return jsonify(msg)
    return render_template('views/login.html', form=form)


@route.route('/register', methods=['POST', 'GET'])
def register():
    form = RegisterForm()
    if request.method == 'POST':
        if form.validate_on_submit():
            firstname = request.form['firstname']
            lastname = request.form['lastname']
            username = request.form['username']
            gender = request.form['gender']
            birthdate = form.birthdate.data
            email = request.form['email']
            password = request.form['password']

            #Generate unique Id
            id = str(uuid4())
            profile_id = str(uuid4())

            #Encrypt the password field
            hashed_password = bcrypt.generate_password_hash(
                password).decode('utf-8')

            #User to register
            requestedUser = tblUser(id=id, firstname=firstname, lastname=lastname, username=username, gender=gender,
                                    birthdate=birthdate, email=email, password=hashed_password, publicId=str(uuid4()))

            try:
                db.session.add(requestedUser)
                pid = str(uuid4())
                profileUser = tblProfile(id=pid, createdBy=id)
                db.session.add(profileUser)
                db.session.commit()
                login_user(requestedUser)
                return redirect('/')
            except:
                db.session.rollback()
                return 'Register failed'
    return render_template('views/register.html', form=form)


@route.route('/logout', methods=['POST'])
@login_required
def logout():
    logout_user()
    return redirect('/login')


@route.route('/user/save/<id>', methods=['POST'])
@login_required
def save_user(id):
    user = tblUser.query.get(id)
    username = request.form['username']
    fullname = request.form['fullname']
    gender = request.form['gender']
    birthdate = request.form['birthdate']
    email = request.form['email']

    firstname = fullname.split(' ')[0]
    lastname = fullname.split(' ')[1]

    Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has modified info from '+user.username+'/'+user.firstname +
                           '/'+user.lastname+'/'+user.gender+'/'+str(user.birthdate)+'/'+user.email, type='Modify', createdBy=current_user.id)
    db.session.add(Activity)

    if birthdate == '':
        birthdate = None

    user.username = username
    user.firstname = firstname
    user.lastname = lastname
    user.gender = gender
    user.birthdate = birthdate
    user.email = email

    db.session.commit()

    return jsonify({'result': 'Success'})


@route.route('/profile')
@login_required
def profile():
    form = ProfileForm()
    try:
        profile = tblProfile.query.get(current_user.profile[0].id)
    except:
        pid = str(uuid4())
        profile = tblProfile(id=pid, createdBy=current_user.id)
        db.session.add(profile)
        db.session.commit()
    return render_template('views/profile.html', form=form, profile=profile)


@route.route('/profile/save/<id>', methods=['POST'])
def save_profile(id):
    form = ProfileForm()
    profile = tblProfile.query.get(id)
    if form.validate_on_submit():
        status = request.form['status']
        phone = request.form['phone']
        company = request.form['company']
        hometown = request.form['hometown']
        location = request.form['location']
        bio = request.form['bio']

        Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has modified profile from '+profile.status+'/'+profile.phone +
                               '/'+profile.company+'/'+profile.hometown+'/'+profile.location+'/'+profile.bio, type='Modify', createdBy=current_user.id)
        db.session.add(Activity)

        profile.status = status
        profile.phone = phone
        profile.company = company
        profile.hometown = hometown
        profile.location = location
        profile.bio = bio

        try:
            db.session.commit()
            return redirect('/profile')
        except:
            return render_template('views/profile.html', form=form)

    return render_template('views/profile.html', form=form)


@route.route('/profile/photo/<id>', methods=['POST'])
def save_photo(id):
    Profile = tblProfile.query.get(id)
    if Profile.photo != 'default.png':
        delete_photo('uploads', Profile.photo)
    jsons = []
    for file in request.files:
        photo = request.files[file]
        extension = photo.filename.rsplit('.', 1)[1]
        filename = str(uuid4()) + '.' + extension
        photo.filename = filename
        uploaded = upload.save(photo)
        Profile.photo = filename
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has uploaded his profile picture ', type='Modify', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        json = {
            'photoId': Profile.id,
            'src': filename,
        }
        jsons.append(json)
    return jsonify(jsons)


@route.route('/setting')
@login_required
def setting():
    return render_template('views/setting.html', loading='Loading')


@route.route('/custome', methods=['POST', 'GET'])
@login_required
@is_confirmed()
def custome():
    if request.method == 'POST':
        categories = tblCategory.query.all()
        category_schema = CategorySchema()
        category = category_schema.dump(categories, many=True)

        brands = tblBrand.query.all()
        brand_schema = BrandSchema()
        brand = brand_schema.dump(brands, many=True)

        floors = tblFloor.query.all()
        floor_schema = FloorSchema()
        floor = floor_schema.dump(floors, many=True)

        advertises = tblAdvertise.query.all()

        users = tblUser.query.all()

        roles = tblRole.query.all()

        roleArr = []
        if roles:
            for role in roles:
                roleObj = {
                    'label': role.role,
                    'data': len(role.description.split(', '))
                }
                roleArr.append(roleObj)

        userObj = {
            'Confirm': 0,
            'Pending': 0,
            'Admin': 0,
        }

        advertiseObj = {
            'Main': 0,
            'Side': 0,
        }

        if users:
            for user in users:
                if user.isConfirm:
                    if user.isAdmin:
                        userObj['Admin'] += 1
                    else:
                        userObj['Confirm'] += 1
                else:
                    userObj['Pending'] += 1

        if advertises:
            for advertise in advertises:
                if advertise.main:
                    advertiseObj['Main'] += 1
                else:
                    advertiseObj['Side'] += 1

        result = {}
        result['categories'] = category
        result['brands'] = brand
        result['floors'] = floor
        result['advertises'] = advertiseObj
        result['users'] = userObj
        result['roles'] = roleArr

        return jsonify(result)
    return render_template('views/custome.html')


@route.route('/category', methods=['POST', 'GET'])
@is_authorized('Editor')
@login_required
@is_confirmed()
def categories():
    form = CategoryForm()
    categories = tblCategory.query.all()
    total = len(categories)
    today = []

    for item in categories:
        if datetime.now().date() == item.createdOn.date():
            today.append(item)
    if request.method == 'POST':
        msg = {
            'category': [],
            'redirect': '',
            'name': '',
            'id': '',
            'total': 0,
            'today': 0
        }
        if form.validate_on_submit():
            category = request.form['category']
            description = request.form['description']
            id = str(uuid4())
            Modal = tblCategory(id=id, category=category,
                                description=description, createdBy=current_user.id)
            msg['name'] = category
            msg['id'] = id
            try:
                Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                                       ' has added category: '+category+' in category', type='Add', createdBy=current_user.id)
                db.session.add(Activity)
                db.session.add(Modal)
                db.session.commit()
                total += 1
                today = len(today) + 1
                msg['redirect'] = '/category'
                msg['total'] = total
                msg['today'] = today
                return jsonify(msg)
            except:
                return 'Failed'
        for fieldName, errorMessages in form.errors.items():
            for err in errorMessages:
                msg[fieldName].append(err)
        return jsonify(msg)
    return render_template('views/category.html', form=form, categories=categories, today=today, total=total)


@route.route('/category/<id>', methods=['POST'])
def category(id):
    if request.form['data']:
        id = request.form['data']
        category = tblCategory.query.get(id)
        json = CategorySchema()
        result = json.dump(category)
    return jsonify(result)


@route.route('/category/property', methods=['POST'])
@login_required
def add_property():
    categoryId = request.form['categoryId']
    _property = request.form['property']
    _type = request.form['type']
    description = request.form['description']
    id = str(uuid4())
    Category = tblCategory.query.get(categoryId)

    Modal = tblProperty(id=id, property=_property, type=_type,
                        description=description, categoryId=categoryId, createdBy=current_user.id)

    Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has added property: ' +
                           _property+' in category '+Category.category, type='Add', createdBy=current_user.id)
    db.session.add(Activity)
    db.session.add(Modal)
    db.session.commit()
    return jsonify({'id': id, 'property': _property, 'type': _type, 'description': description, 'msg': ''})


@route.route('/property/remove/<id>', methods=['POST'])
@login_required
def remove_property(id):
    try:
        _property = tblProperty.query.get(id)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has deleted property: ' +
                                _property.property+' in category', type='Delete', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.delete(_property)
        db.session.commit()
        return jsonify({'msg': 'Property deleted', 'data': 'Success'})
    except:
        return jsonify({'data': 'Failed to delete property'})


@route.route('/property/update/<id>', methods=['POST'])
def update_property(id):
    _property = tblProperty.query.get(id)

    new_property = request.form['property']
    new_type = request.form['type']
    new_description = request.form['description']

    Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has modified property from ' +
                           _property.property+'/'+_property.type+'/'+_property.description, type='Modify', createdBy=current_user.id)
    db.session.add(Activity)

    _property.property = new_property
    _property.type = new_type
    _property.description = new_description

    try:
        db.session.commit()
        return jsonify({'id': id, 'property': new_property, 'type': new_type, 'description': new_description})
    except:
        return jsonify({'msg': 'Failed'})


@route.route('/category/remove/<id>', methods=['POST'])
def remove_category(id):
    category = tblCategory.query.get(id)
    if category.products:
        return jsonify({'msg': 'Please remove all the existing product before deleting.'})
    else:
        try:
            Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                                   ' has deleted category: '+category.category, type='Delete', createdBy=current_user.id)
            db.session.add(Activity)
            db.session.delete(category)
            db.session.commit()
            categories = tblCategory.query.all()
            today = []
            for item in categories:
                if datetime.now().date() == item.createdOn.date():
                    today.append(item)
            return jsonify({'msg': 'Success', 'today': len(today), 'total': len(categories)})
        except:
            return jsonify({'msg': 'Failed'})


@route.route('/category/update/<id>', methods=['POST'])
def udpate_category(id):
    category = tblCategory.query.get(id)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has modified category from '+category.category, type='Modify', createdBy=current_user.id)
    db.session.add(Activity)
    try:
        category.category = request.form['data']
        db.session.commit()
        return jsonify({'category': request.form['data'], 'msg': 'Success'})
    except:
        return jsonify({'msg': 'Failed'})


@route.route('/brand', methods=['POST', 'GET'])
@is_authorized('Editor')
@login_required
@is_confirmed()
def brand():
    brands = tblBrand.query.all()
    categories = tblCategory.query.with_entities(
        tblCategory.id, tblCategory.category).all()
    form = BrandForm()
    if request.method == 'POST':
        msg = {
            'brand': [],
            'redirect': '',
            'name': '',
            'id': ''
        }
        if form.validate_on_submit():
            brand = request.form['brand']
            description = request.form['description']
            id = str(uuid4())
            Modal = tblBrand(id=id, brand=brand,
                             description=description, createdBy=current_user.id)
            msg['name'] = brand
            msg['id'] = id
            try:
                db.session.add(Modal)
                Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                                       ' has added brand: '+brand+' in brand', type='Add', createdBy=current_user.id)
                db.session.add(Activity)
                db.session.commit()
                msg['redirect'] = '/brand'
                return jsonify(msg)
            except:
                return 'Failed'
        for fieldName, errorMessages in form.errors.items():
            for err in errorMessages:
                msg[fieldName].append(err)
        return jsonify(msg)
    return render_template('views/product.html', brands=brands, form=form, categories=categories)


@route.route('/brands', methods=['POST'])
def brands():
    brands = tblBrand.query.all()
    b = BrandSchema(many=True)
    Brands = b.dump(brands)
    return jsonify(Brands)


@route.route('/brand/remove/<id>', methods=['POST'])
def remove_brand(id):
    brand = tblBrand.query.get(id)
    if brand.products:
        return jsonify({'msg': 'Please remove all the existing product before deleting.'})
    else:
        try:
            db.session.delete(brand)
            Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                                   ' has deleted brand: '+brand.brand, type='Delete', createdBy=current_user.id)
            db.session.add(Activity)
            db.session.commit()
            return jsonify({'msg': 'Success'})
        except:
            return jsonify({'msg': 'Failed'})


@route.route('/brand/update/<id>', methods=['POST'])
def udpate_brand(id):
    brand = tblBrand.query.get(id)
    try:
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has modified brand from '+brand.brand, type='Modify', createdBy=current_user.id)
        db.session.add(Activity)
        brand.brand = request.form['data']
        db.session.commit()
        return jsonify({'brand': request.form['data'], 'msg': 'Success'})
    except:
        return jsonify({'msg': 'Failed'})


@route.route('/theme/change', methods=['POST'])
@login_required
def theme():
    theme = request.form['data']
    user = tblUser.query.get(current_user.id)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has modified theme from '+user.theme, type='Modify', createdBy=current_user.id)
    db.session.add(Activity)
    user.theme = theme
    db.session.commit()
    return jsonify({'theme': theme})


@route.route('/product/add', methods=['POST'])
def add_product():
    product = request.form['product']
    barcode = request.form['barcode']
    price = request.form['price']
    discount = request.form['discount']
    category = request.form['category']
    currency = request.form['currency']
    period = request.form['period']
    description = request.form['description']
    brand = request.form['brand']
    isStock = request.form['isStock']

    if isStock == 'true':
        isStock = True
    else:
        isStock = False

    if period == '':
        period = None

    id = str(uuid4())

    if currency == 'KHR':
        priceCurrency = float(price) / 4000
    else: 
        priceCurrency = price

    Model = tblProduct(id=id, product=product, barcode=barcode, isStock=isStock, price=priceCurrency, discount=discount, period=period,
                       currency=currency, priceCurrency=price, description=description, createdBy=current_user.id, categoryId=category, brandId=brand)
    try:
        db.session.add(Model)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has added product '+product, type='Add', createdBy=current_user.id)
        db.session.add(Activity)
        Appearance = tblAppearance(id=str(
            uuid4()), width='', height='', weight='', depth='', material='', productId=id)
        db.session.add(Appearance)
        db.session.commit()
        return jsonify({'data': 'Success', 'id': id})
    except:
        return jsonify({'data': 'Faild', 'id': id})


@route.route('/product', methods=['POST'])
@login_required
def products():
    id = request.form['data']
    Products = tblProduct.query.with_entities(tblProduct.id, tblProduct.product, tblProduct.createdOn,
                                              tblProduct.price, tblProduct.currency, tblProduct.priceCurrency, tblProduct.photo, tblProduct.categoryId, tblProduct.discount).filter_by(brandId=id).all()
    products = []
    for Product in Products:
        price = simplejson.dumps({"price": Product.price})
        price = json.loads(price)
        Category = tblCategory.query.get(Product.categoryId)
        arrival = datetime.now().date() - Product.createdOn.date()
        product = {
            'id': Product.id,
            'product': Product.product,
            'photo': Product.photo,
            'category': Category.category,
            'arrival': arrival.days,
            'discount': Product.discount,
            'currency': Product.currency,
            'priceCurrency': Product.priceCurrency
        }
        product.update(price)
        products.append(product)
    return jsonify(products)


@route.route('/product/photo/<id>', methods=['POST'])
def product_photo(id):
    alt = request.form['name']
    Product = tblProduct.query.get(id)
    if Product.photo != 'default.png':
        delete_photo('uploads', Product.photo)
    jsons = []
    for file in request.files:
        photo = request.files[file]
        extension = photo.filename.rsplit('.', 1)[1]
        filename = str(uuid4()) + '.' + extension
        photo.filename = filename
        uploaded = upload.save(photo)
        Product.photo = filename
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has upload photo for product: '+Product.product, type='Upload', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        json = {
            'photoId': Product.id,
            'src': filename,
            'alt': alt
        }
        jsons.append(json)
    return jsonify(jsons)


@route.route('/product/color/<id>', methods=['POST'])
def upload_color(id):
    hex = request.form['hex']
    color = request.form['color']
    cid = str(uuid4())
    Color = tblColor(id=cid, color=color, hex=hex,
                     createdBy=current_user.id, productId=id)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has added color '+color+' in product', type='Add', createdBy=current_user.id)
    db.session.add(Activity)
    db.session.add(Color)
    db.session.commit()

    return jsonify({'id': cid, 'hex': hex, 'color': color})


@route.route('/color/photo/<id>', methods=['POST'])
def color_photo(id):
    cid = request.form['color']
    alt = request.form['name']
    color = tblColor.query.get(cid)
    jsons = []
    for file in request.files:
        photo = request.files[file]
        extension = photo.filename.rsplit('.', 1)[1]
        filename = str(uuid4()) + '.' + extension
        photo.filename = filename
        uploaded = upload.save(photo)
        pid = str(uuid4())
        Photo = tblPhoto(id=pid, src=filename, alt=alt,
                         createdBy=current_user.id, colorId=cid, productId=id)
        db.session.add(Photo)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has upload photo for color: '+color.color, type='Upload', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
    color = tblColor.query.get(cid)
    json = ColorSchema()
    result = json.dump(color)
    return jsonify(result)


@route.route('/product/<id>', methods=['POST', 'GET'])
def product(id):
    product = tblProduct.query.get(id)
    if product.period is not None:
        if product.period < datetime.utcnow().date():
            product.period = None
            product.discount = ''
            db.session.commit()
    if request.method == 'POST':
        json = ProductSchema()
        result = json.dump(product)
        category = tblCategory.query.get(product.categoryId)
        c = CategorySchema()
        result['category'] = c.dump(category)
        brand = tblBrand.query.get(product.brandId)
        result['brand'] = brand.brand
        brands = tblBrand.query.all()
        b = BrandSchema(many=True)
        Brands = b.dump(brands)
        result['brands'] = Brands
        return jsonify(result)
    return render_template('views/product_details.html', product=product)


@route.route('/value/add', methods=['POST'])
def add_value():
    product_id = request.form['product']
    property_id = request.form['property']
    value = request.form['value']
    price = request.form['price']
    currency = request.form['currency']
    description = request.form['description']

    if currency == 'KHR':
        priceCurrency = float(price) / 4000
    else:
        priceCurrency = price

    id = str(uuid4())
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has added value '+value+' in product', type='Add', createdBy=current_user.id)
    db.session.add(Activity)
    model = tblValue(id=id, value=value, price=priceCurrency, priceCurrency=price, currency=currency, description=description,
                     createdBy=current_user.id, productId=product_id, propertyId=property_id)
    db.session.add(model)

    db.session.commit()
    return jsonify({'id': id, 'value': value, 'price': price, 'currency': currency, 'description': description, 'property': property_id})


@route.route('/product/save/<id>', methods=['POST'])
def save_product(id):
    Product = tblProduct.query.get(id)

    category = request.form['category']
    brand = request.form['brand']
    product = request.form['product']
    barcode = request.form['barcode']
    currency = request.form['currency']
    price = request.form['price']
    isStock = request.form['isStock']
    period = request.form['period']
    discount = request.form['discount']
    description = request.form['description']

    width = request.form['width']
    height = request.form['height']
    weight = request.form['weight']
    depth = request.form['depth']
    material = request.form['material']

    if currency == 'KHR':
        priceCurrency = float(price) / 4000
    else:
        priceCurrency = price

    Category = tblCategory.query.get(category)
    Brand = tblBrand.query.get(brand)

    if isStock == 'true':
        isStock = True
    else:
        isStock = False

    if period == '':
        period = None

    Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has modified product from '+Product.product+'/'+Product.barcode+'/'+str(Product.isStock)+'/'+Product.currency +
                           '/'+str(Product.price)+'/'+Product.description+'/'+str(Product.discount)+'/'+str(Product.period)+'/'+Category.category, type='Modify', createdBy=current_user.id)
    db.session.add(Activity)

    Product.product = product
    Product.barcode = barcode
    Product.isStock = isStock
    Product.currency = currency
    Product.price = priceCurrency
    Product.priceCurrency = price
    Product.description = description
    Product.categoryId = category
    Product.brandId = brand
    Product.discount = discount
    Product.period = period

    try:
        Product.appearance[0].width = width
        Product.appearance[0].height = height
        Product.appearance[0].weight = weight
        Product.appearance[0].depth = depth
        Product.appearance[0].material = material
        db.session.commit()
        return jsonify({'data': 'Success'})
    except:
        return jsonify({'data': 'Failed'})


@route.route('/product/remove/<id>', methods=['POST'])
def remove_product(id):
    product = tblProduct.query.get(id)
    if product.colors:
        for color in product.colors:
            if color.photos:
                for photo in color.photos:
                    delete_photo('uploads', photo.src)
    if product.photo != 'default.png':
        delete_photo('uploads', product.photo)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has deleted product '+product.product, type='Delete', createdBy=current_user.id)
    db.session.delete(product)
    db.session.add(Activity)
    db.session.commit()
    return jsonify({'result': 'Success'})


@route.route('/value/save/<id>', methods=['POST'])
def save_value(id):
    value = tblValue.query.get(id)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has modified value from '+value.value+'/'+str(
        value.price)+'/'+value.currency+'/'+value.description+' in product: '+value.productId, type='Modify', createdBy=current_user.id)
    db.session.add(Activity)
    value.value = request.form['value']
    value.priceCurrency = request.form['price']
    value.currency = request.form['currency']

    # Exchange price base on currency
    if value.currency == 'KHR':
        value.price = float(value.priceCurrency) / 4000
    else:
        value.price = value.priceCurrency

    value.description = request.form['description']
    try:
        db.session.commit()
        return jsonify({'resutl': 'success', 'value': value.value, 'price': value.priceCurrency, 'currency': value.currency, 'description': value.description})
    except:
        return jsonify({'resutl': 'failed'})


@route.route('/value/remove/<id>', methods=['POST'])
def remove_value(id):
    value = tblValue.query.get(id)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has deleted value: ' +
                           value.value+' in product', type='Delete', createdBy=current_user.id)
    db.session.add(Activity)
    db.session.delete(value)
    db.session.commit()
    return jsonify({'result': 'Success'})

# Update value to default
@route.route('/value/default/<id>', methods=['POST'])
def default_value(id):
    propertyId = request.form['propertyId']
    productId = request.form['productId']
    value = tblValue.query.get(id)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has updated: ' +
                           value.value+' to default value', type='Modify', createdBy=current_user.id)
    db.session.add(Activity)

    # remove the existing default value
    values = tblValue.query.filter(tblValue.propertyId == propertyId, tblValue.productId == productId).all()
    for v in values:
        v.isDefault = False
    
    # set the current value to default
    value.isDefault = True

    try:
        db.session.commit()
        return jsonify({'result': 'Success'})
    except: 
        return jsonify({'result': 'Faild'})

@route.route('/color/<id>', methods=['POST'])
def get_color(id):
    color = tblColor.query.get(id)
    json = ColorSchema()
    result = json.dump(color)
    return jsonify(result)


@route.route('/color/save/<id>', methods=['POST'])
def save_color(id):
    color = tblColor.query.get(id)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has modified color from ' +
                           color.color+'/'+color.hex+' in product', type='Modify', createdBy=current_user.id)
    db.session.add(Activity)
    color.color = request.form['color']
    color.hex = request.form['hex']
    db.session.commit()
    return jsonify({'color': color.color, 'hex': color.hex})


@route.route('/color/remove/<id>', methods=['POST'])
def remove_color(id):
    color = tblColor.query.get(id)
    if color.colorsOfProduct.stocks:
        for stock in color.colorsOfProduct.stocks:
            if stock.color == id:
                stock.color = ''
    if color.photos:
        for photo in color.photos:
            delete_photo('uploads', photo.src)
    try:
        db.session.delete(color)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has deleted color: ' +
                               color.color+' in product', type='Delete', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'result': 'Success', 'photos': []})
    except:
        return jsonify({'result': 'Failed'})


@route.route('/property/<id>', methods=['POST'])
def _property(id):
    category = tblCategory.query.get(id)
    c = CategorySchema()
    result_property = c.dump(category)

    product = tblProduct.query.get(request.form['product'])
    p = ProductSchema()
    if product:
        result_product = p.dump(product)
    else:
        result_product = ''

    return jsonify({'property': result_property, 'product': result_product})


@route.route('/stock')
@is_authorized('Stock')
@login_required
@is_confirmed()
def stocks():
    products = tblProduct.query.all()
    brands = tblBrand.query.all()
    categories = tblCategory.query.all()
    today = date.today()
    return render_template('views/stock.html', products=products, brands=brands, categories=categories, current_date=today)


@route.route('/stock/product/<id>')
@is_authorized('Stock')
@login_required
@is_confirmed()
def stock(id):
    product = tblProduct.query.get(id)
    total_stock = 0
    sum_cost = 0
    total_cost = 0
    if product.stocks:
        for stock in product.stocks:
            total_stock += stock.quantity
            sum_cost = stock.cost * stock.quantity
            total_cost += sum_cost

    product.stocks.sort(key=lambda r: r.createdOn, reverse=True)
    stocks = []
    today = date.today()
    if product.colors:
        for color in product.colors:
            total_quantity = 0
            if product.stocks:
                for stock in product.stocks:
                    if stock.color == color.id:
                        total_quantity += stock.quantity

            stock = {
                'color': color.color,
                'quantity': total_quantity
            }

            stocks.append(stock)

    return render_template('views/product_stock.html', product=product, total_stock=total_stock, total_cost=total_cost, stocks=stocks, today=today)


@route.route('/stock/add', methods=['POST'])
def add_stock():
    color = request.form['color']
    cost = request.form['cost']
    quantity = request.form['quantity']
    currency = request.form['currency']
    rate = request.form['rate']
    expire = request.form['expire']
    product = request.form['product']
    costCurrency = cost

    Product = tblProduct.query.get(product)
    
    if expire == '':
        expire = None

    if rate == '':
        rate = 4000

    id = str(uuid4())

    amount = float(cost) * int(quantity)

    if currency == 'KHR':
        amount /= float(rate)
        cost = float(cost) / 4000

    model = tblStock(id=id, cost=cost, costCurrency=costCurrency, quantity=quantity, currency=currency, rate=rate, total=amount,
                     expire=expire, productId=product, color=color, createdBy=current_user.id)
    
    outcome = tblOutcome(id=id, description=Product.product +
                         ' x'+quantity, amount=amount, createdBy=current_user.id)
    try:
        db.session.add(model)
        db.session.add(outcome)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has added stock: '+str(cost)+'/'+currency+'/'+str(
            quantity)+'/'+str(rate)+'/'+str(expire)+'/'+str(amount)+' in product '+Product.product, type='Add', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        total_stock = 0
        total_costs = 0
        total_cost = 0
        for stock in model.stocksOfProduct.stocks:
            total_stock += stock.quantity
            total_cost = stock.cost * stock.quantity
            total_costs += total_cost
        return jsonify({'data': 'success', 'id': id, 'cost': costCurrency, 'quantity': quantity, 'currency': currency, 'rate': rate, 'expire': expire, 'color': color, 'total_stock': total_stock, 'createdOn': model.createdOn.strftime('%Y-%m-%d %H:%M:%S'), 'total_cost': total_costs, 'total': amount})
    except:
        return jsonify({'data': 'failed'})


@route.route('/stock/delete/<id>', methods=['POST'])
def delete_stock(id):
    stock = tblStock.query.get(id)
    outcome = tblOutcome.query.get(id)
    total_stock = 0
    total_costs = 0
    total_cost = 0

    delete_stock = stock.quantity
    delete_cost = stock.cost * stock.quantity
    for s in stock.stocksOfProduct.stocks:
        total_stock += s.quantity
        total_cost = s.cost * s.quantity
        total_costs += total_cost
    try:
        db.session.delete(outcome)
        db.session.delete(stock)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has deleted stock: '+str(stock.cost)+'/'+stock.currency+'/'+str(
            stock.quantity)+'/'+str(stock.rate)+'/'+str(stock.expire)+'/'+str(stock.total)+' in product '+stock.stocksOfProduct.product, type='Delete', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        total_stock -= delete_stock
        total_costs -= delete_cost
        return jsonify({'data': 'success', 'total_stock': total_stock, 'total_cost': total_costs})
    except:
        return jsonify({'data': 'failed'})


@route.route('/stock/save/<id>', methods=['POST'])
def save_stock(id):
    stock = tblStock.query.get(id)
    outcome = tblOutcome.query.get(id)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has modified stock from: '+str(stock.cost)+'/'+stock.currency+'/'+str(
        stock.rate)+'/'+str(stock.quantity)+'/'+str(stock.expire)+'/'+str(stock.total)+' in product '+stock.stocksOfProduct.product, type='Modify', createdBy=current_user.id)
    db.session.add(Activity)

    expire =  request.form['expire']
    if expire == '':
        expire = None

    color = request.form['color']
    cost = request.form['cost']
    currency = request.form['currency']
    rate = request.form['rate']
    quantity = request.form['quantity']
    costCurrency = cost

    amount = float(cost) * int(quantity)
    if currency == 'KHR':
        amount /= float(rate)
        cost = float(cost) / 4000


    stock.color = color
    stock.cost = cost
    stock.costCurrency = costCurrency
    stock.currency = currency
    stock.rate = rate
    stock.quantity = quantity
    stock.total = amount
    stock.expire = expire
    outcome.amount = amount
    try:
        db.session.commit()
        total_stock = 0
        total_costs = 0
        total_cost = 0
        if stock.stocksOfProduct.stocks:
            for s in stock.stocksOfProduct.stocks:
                total_stock += s.quantity
                total_cost = s.cost * s.quantity
                total_costs += total_cost

        stocks = []
        if stock.stocksOfProduct.colors:
            for color in stock.stocksOfProduct.colors:
                total_quantity = 0
                if stock.stocksOfProduct.stocks:
                    for s in stock.stocksOfProduct.stocks:
                        if s.color == color.id:
                            total_quantity += s.quantity
                st = {
                    'color': color.color,
                    'quantity': total_quantity
                }
                stocks.append(st)

        return jsonify({'data': 'success', 'total_stock': total_stock, 'stocks': stocks, 'total_cost': total_costs, 'total': amount})
    except:
        return jsonify({'data': 'failed'})


@route.route('/financial')
@login_required
@is_confirmed()
def financial():
    return render_template('views/financial.html')


@route.route('/cashing')
@is_authorized('Cashier')
@login_required
@is_confirmed()
def cashing():
    products = tblProduct.query.all()
    brands = tblBrand.query.all()
    categories = tblCategory.query.all()
    store = tblStore.query.first()
    customers = tblCustomer.query.order_by(tblCustomer.createdOn).all()
    return render_template('views/cashing.html', products=products, brands=brands, categories=categories, store=store, customers=customers)



@route.route('/drawer/create', methods=['POST'])
def create_drawer():
    data = json.loads(request.form['data'])
    id = str(uuid4())
    Drawer = tblDrawer(id=id, key=current_user.token,
                       rate=data['rate'], counter=data['counter'], createdBy=current_user.id)
    db.session.add(Drawer)
    total = 0

    for money in data['moneys']:
        if money['currency'] == 'KHR':
            value = float(money['money']) / 4000
        else:
            value = money['money']
        mid = str(uuid4())
        Money = tblMoney(
            id=mid, money=money['money'], currency=money['currency'], unit=money['unit'], drawerId=id, value=value)
        total += float(money['total'])
        db.session.add(Money)
    Drawer.startCost = total
    current_user.drawer = id
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has opened drawer', type='Open', createdBy=current_user.id)
    db.session.add(Activity)

    db.session.commit()
    startedOn = Drawer.startedOn.strftime("%b %d %Y %H:%M:%S")
    return jsonify({'data': 'Success', 'startedOn': startedOn, 'id': id})

@route.route('/money/add/<id>', methods=['POST'])
def add_money(id):
    Drawer = tblDrawer.query.get(id)
    money = request.form['money']
    unit = request.form['unit']
    currency = request.form['currency']

    if currency == 'KHR':
        value = float(money) / float(Drawer.rate)
    else:
        value = money
    mid = str(uuid4())
    Money = tblMoney(id=mid, money=money, currency=currency, unit=unit, drawerId=id, value=value)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +' has added money to drawer', type='Add', createdBy=current_user.id)
    try: 
        db.session.add(Money)
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'data': 'Success'})
    except:
        return jsonify({'data': 'Failed'})


@route.route('/drawer/end/<id>', methods=['POST'])
def end_drawer(id):
    Drawer = tblDrawer.query.get(id)
    Drawer.endedOn = datetime.utcnow()
    current_user.drawer = ''
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has closed drawer', type='Close', createdBy=current_user.id)
    db.session.add(Activity)
    db.session.commit()
    return jsonify({'data': 'Success'})


@route.route('/drawer/<id>', methods=['POST'])
def get_drawer(id):
    try:
        Drawer = tblDrawer.query.get(id)
        if Drawer is None:
            moneys = []
            rate = 4000
            counter = 'Default'
            return jsonify({'data': moneys, 'rate': rate, 'counter': counter})
        else:
            jsonObj = DrawerSchema()
            drawer = jsonObj.dump(Drawer)
            return jsonify({'data': drawer['moneys'], 'rate': drawer['rate'], 'counter': drawer['counter']})
    except:
        return jsonify({'data': []})

@route.route('/order/product/<id>', methods=['POST'])
def order_product(id):
    resultObj = {
        'data': {},
        'result': ''
    }
    try:
        product = tblProduct.query.get(id)
        data = json.loads(request.form['data'])
        description = data['details']
        oid = request.form['id']

        Payment = tblPayment.query.get(oid)
        

        if data['colorId'] == '':
            data['colorId'] = None

        if data['discount'] == '':
            data['discount'] = 0

        discount = Decimal(data['discount'])
        price = Decimal(data['price'])
        quantity = Decimal(data['quantity'])

        amount = price * (1 - discount / 100)

        tid = str(uuid4())
        transaction = tblTransaction(id=tid, discount=discount, price=price,
                                    amount=amount, description=description, createdBy=current_user.id, product=id)
        db.session.add(transaction)
        if Payment:
            Payment.transactions.append(transaction)

        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                            ' has added transaction: '+description, type='Add', createdBy=current_user.id)
        db.session.add(Activity)

        if product.isStock:
            if len(product.stocks) > 0:
                total_stocks = 0
                sum_stocks = 0
                for stock in product.stocks:
                    if stock.color == data['colorId']:
                        sum_stocks += stock.quantity
                    elif stock.color == '':
                        sum_stocks += stock.quantity
                    total_stocks += stock.quantity
                available = sum_stocks - quantity
                if available >= 0:
                    sum_quantity = quantity
                    for stock in product.stocks:
                        if sum_quantity > 0 and stock.quantity > 0:
                            qid = str(uuid4())
                            if stock.color == data['colorId'] or stock.color == '':
                                if stock.quantity < sum_quantity:
                                    stock_quantity = stock.quantity
                                    stock.quantity = 0
                                    Quantity = tblQuantity(
                                        id=qid, stock=stock_quantity, quantity=sum_quantity, stockId=stock.id, transactionId=tid)
                                    db.session.add(Quantity)
                                    transaction.quantity += stock_quantity
                                    sum_quantity -= stock_quantity
                                else:
                                    Quantity = tblQuantity(
                                        id=qid, stock=sum_quantity, quantity=sum_quantity, stockId=stock.id, transactionId=tid)
                                    db.session.add(Quantity)
                                    transaction.quantity += sum_quantity
                                    stock.quantity -= sum_quantity
                                    sum_quantity = 0
                    amount *= quantity
                    transaction.amount = amount
                    total_stocks -= quantity
                    db.session.commit()
                    resultObj['result'] = 'success'
                    resultObj['data'] = {'id': tid, 'amount': amount, 'stock': total_stocks,
                                        'quantity': quantity, 'price': price, 'isStock': True, 'discount': discount}
                else:
                    resultObj['result'] = 'not enough'
                    resultObj['data'] = {
                        'message': str(sum_stocks)}
            else:
                resultObj['result'] = 'out of stock'
        else:
            transaction.quantity = quantity
            amount *= quantity
            transaction.amount = amount
            if Payment:
                Payment.amount += amount
            db.session.commit()
            resultObj['result'] = 'success'
            resultObj['data'] = {'id': tid, 'amount': amount, 'quantity': quantity,
                                'price': price, 'isStock': False, 'discount': discount}
        return jsonify(resultObj)
    except:
        resultObj['result'] = 'error'
        return jsonify(resultObj)

@route.route('/transaction/delete/<id>', methods=['POST'])
def delete_transaction(id):
    Transaction = tblTransaction.query.get(id)
    pid = request.form['data']
    quantity = 0
    if Transaction.quantities:
        for q in Transaction.quantities:
            quantity += Transaction.quantity
        q.soq.quantity += quantity
    if pid != '':
        Payment = tblPayment.query.get(pid)
        Payment.amount -= Transaction.amount
    try:
        db.session.delete(Transaction)
        db.session.commit()
        return jsonify({'result': 'Success', 'quantity': quantity})
    except:
        return jsonify({'result': 'Transaction could not found'})


@route.route('/checkout/<id>', methods=['POST'])
def checkout(id):
    payment = tblPayment.query.get(id)
    customer = request.form['customer']
    
    if payment.isComplete:
        return jsonify({'result': 'Failed', 'msg': 'paid'})
    else:
        if customer != '':
            payment.orderedBy = customer
            db.session.commit()
        drawer = tblDrawer.query.get(current_user.drawer)
        if payment.rate is None:
            payment.rate = drawer.rate
        jsonObj = json.loads(request.form['data'])
        amounts = jsonObj['amounts']
        amount = 0

        amountUSD = 0
        amountKHR = 0

        paidKHR = 0
        paidUSD = 0

        remainKHR = payment.remain

        for a in amounts:
            if a['currency'] == 'KHR':
                amountKHR += Decimal(a['amount'])
                a['amount'] = Decimal(a['amount']) / 4000
                paidKHR += Decimal(a['amount'])
            else:
                amountUSD += Decimal(a['amount'])
                paidUSD += Decimal(a['amount'])
            amount += Decimal(a['amount'])

        remainKHR -= paidUSD
        if remainKHR > 0:
            remainKHR *= payment.rate / 4000
            remain = paidUSD + remainKHR
        else:
            remain = paidUSD
        moneys = []
        
        if round(amount, 4) >= round(remain, 4):
            payment.paid += payment.remain
            change = 0
            
            moneyObj = {
                'money': change,
                'currency': 'USD'
            }

            paymentAmount = payment.remain
            oweRemain = paymentAmount
            
            paymentAmount -= paidUSD
            if paymentAmount > 0:
                paymentAmount *= payment.rate / 4000
                change = round(paidKHR, 4) - round(paymentAmount, 4)
            else:
                change = paidUSD - payment.remain + paidKHR
            total_change = change
            payment.remain = 0

            for money in (sorted(drawer.moneys, key=operator.attrgetter('value'), reverse=True)):
                convertMoney = 0
                if money.currency == 'KHR':
                        convertMoney = money.money / 4000
                else:
                    convertMoney = money.money
                if money.unit > 0 and convertMoney <= change:
                    for unit in range(int(money.unit)):
                        if convertMoney <= change:
                            moneys.append({
                                'money': money.money,
                                'currency': money.currency
                            })
                            money.unit -= 1
                            change -= convertMoney
                            moneyObj['money'] = change

            moneyObj['money'] = change
            moneys.append(moneyObj)

            for transaction in payment.transactions:
                transaction.isComplete = True
                transaction.profit = transaction.amount
                if transaction.quantities:
                    for quantity in transaction.quantities:
                        transaction.profit -= quantity.soq.cost * quantity.quantity

            payment.isComplete = True
            payment.change = total_change
            msg = ''
            payment.receive = str(amountUSD + Decimal(payment.receive.split(',')[0])) + ',' + str(amountKHR + Decimal(payment.receive.split(',')[1]))

            if payment.customerPayment.customerOwe:
                cashUSD = amountUSD + Decimal(payment.customerPayment.customerOwe[0].receive.split(',')[0]) - Decimal(payment.receive.split(',')[0])
                cashKHR = amountKHR + Decimal(payment.customerPayment.customerOwe[0].receive.split(',')[1]) - Decimal(payment.receive.split(',')[1])
            else:
                cashUSD = amountUSD
                cashKHR = amountKHR
            receive = str(cashUSD) + ',' + str(cashKHR)
            if payment.customerPayment.customerOwe:
                if payment in payment.customerPayment.customerOwe[0].owePayments:
                    payment.customerPayment.customerOwe[0].remain -= oweRemain
                    payment.customerPayment.customerOwe[0].amount -= payment.amount
                    payment.customerPayment.customerOwe[0].paid += oweRemain
                    payment.customerPayment.customerOwe[0].receive = receive

            if payment.orderPayment:
                payment.orderPayment[0].checkin.order.status = 'Open'
                payment.orderPayment[0].checkin.isCompleted = True
            Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                                ' has checked out payment '+payment.invoice, type='Payment', createdBy=current_user.id)
            db.session.add(Activity)
            db.session.commit()
            return jsonify({'result': 'Success', 'msg': '', 'change': moneys, 'rate': payment.rate, 'total_change': total_change, 'isComplete': payment.isComplete, 'total_receive': payment.receive, 'total_remain': payment.remain, 'total_paid': payment.paid})
        else:
            if payment.customerPayment.customerOwe:
                payment.paid += paidUSD + (paidKHR * 4000 / payment.rate)
                payment.remain = (remain - amount) * 4000 / payment.rate

                payment.receive = str(amountUSD + Decimal(payment.receive.split(',')[0])) + ',' + str(amountKHR + Decimal(payment.receive.split(',')[1]))
                total_change = 0

                receive = str(amountUSD + Decimal(payment.customerPayment.customerOwe[0].receive.split(',')[0])) + ',' + str(amountKHR + Decimal(payment.customerPayment.customerOwe[0].receive.split(',')[1]))

                if payment in payment.customerPayment.customerOwe[0].owePayments:
                    payment.customerPayment.customerOwe[0].remain -= paidUSD + (paidKHR * 4000 / payment.rate)
                    payment.customerPayment.customerOwe[0].paid += paidUSD + (paidKHR * 4000 / payment.rate)
                    payment.customerPayment.customerOwe[0].receive = receive
                else:
                    payment.customerPayment.customerOwe[0].owePayments.append(payment)
                    payment.customerPayment.customerOwe[0].amount += payment.amount
                    payment.customerPayment.customerOwe[0].remain += payment.remain
                    payment.customerPayment.customerOwe[0].paid += payment.paid
                    payment.customerPayment.customerOwe[0].receive = receive
    
                msg = str(round(payment.remain, 3))
                if payment.orderPayment:
                    payment.orderPayment[0].checkin.order.status = 'Open'
                    payment.orderPayment[0].checkin.isCompleted = True
                
                Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                                    ' has checked out payment '+payment.invoice, type='Payment', createdBy=current_user.id)
                db.session.add(Activity)
                db.session.commit()
                return jsonify({'result': 'Success', 'msg': msg, 'change': moneys, 'rate': payment.rate, 'total_change': total_change, 'isComplete': payment.isComplete, 'total_receive': payment.receive, 'total_remain': payment.remain, 'total_paid': payment.paid})
            else:
                msg = 'owe'
                return jsonify({'result': 'Failed', 'msg': msg, 'rate': payment.rate})

        
        
@route.route('/payments')
@is_authorized('Cashier')
@login_required
@is_confirmed()
def payments():
    store = tblStore.query.first()
    payments = tblPayment.query.all()
    current = datetime.utcnow()
    return render_template('views/payment.html', payments=payments, store=store, current=current)


@route.route('/owe')
@is_authorized('Cashier')
@login_required
@is_confirmed()
def owe():
    store = tblStore.query.first()
    customers = tblCustomer.query.all()
    current = datetime.utcnow()
    return render_template('views/owe.html', customers=customers, store=store, current=current)


@route.route('/transaction')
@is_authorized('Admin')
@login_required
@is_confirmed()
def transaction():
    Transactions = tblTransaction.query.order_by(tblTransaction.createdOn.desc()).all()
    Payments = tblPayment.query.order_by(tblPayment.invoice.desc()).all()
    return render_template('views/transaction.html', transactions=Transactions, payments=Payments)


@route.route('/transaction/reverse', methods=['POST'])
def undo_transaction():
    id = request.form['id']
    transaction = tblTransaction.query.get(id)
    if transaction.quantities:
        if transaction.transactions:
            transaction.transactions[0].isComplete = False
        for q in transaction.quantities:
            q.soq.quantity += q.stock
    try:
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has reversed transaction ' +
                               transaction.description, type='Delete', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.delete(transaction)
        db.session.commit()
        return jsonify({'data': 'Success'})
    except:
        return jsonify({'data': 'Could not find the selected transaction'})

@route.route('/transaction/update/<id>', methods=['POST'])
def update_transaction(id):
    transaction = tblTransaction.query.get(id)
    price = request.form['price']
    discount = request.form['discount']
    details = request.form['details']

    if discount == '':
        discount = 0
    
    transaction.amount = round(float(price) * (1 - float(discount) / 100), 3)
    transaction.description = details
    transaction.price = price
    transaction.discount = discount
    

    resultObj = {
        'result': '',
        'data': {}
    }

    try:
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has updated transaction ' +
                               transaction.description, type='Modified', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        resultObj['result'] = 'success'
        resultObj['data'] = {'id': transaction.id, 'amount': transaction.amount, 'quantity': transaction.quantity, 'price': price, 'isStock': False, 'discount': discount}
        return jsonify(resultObj)
    except:
        resultObj['result'] = 'failed'
        return jsonify(resultObj)


@route.route('/invoice/search', methods=['POST'])
def search_invoice():
    input = request.form['data']
    return jsonify({'data': 'Success'})


@route.route('/report', methods=['POST', 'GET'])
@login_required
@is_confirmed()
def report():
    outcome = tblOutcome.query.filter(cast(tblOutcome.createdOn, Date) == cast(datetime.utcnow(), Date)).all()
    Transactions = tblTransaction.query.filter(cast(tblTransaction.createdOn, Date) == cast(datetime.utcnow(), Date)).all()
    if request.method == 'POST':
        data = []
        products = []
        for transaction in Transactions:
            obj = {
                'label': transaction.description,
                'data': transaction.profit,
                'product': transaction.product
            }
            if transaction.product in products:
                for d in data:
                    if d['product'] == transaction.product:
                        d['data'] += transaction.profit
            else:
                obj = {
                    'label': transaction.description,
                    'data': transaction.profit,
                    'product': transaction.product
                }
                products.append(transaction.product)
                data.append(obj)
        return jsonify({'data': data})
    return render_template('views/report.html')


@route.route('/income', methods=['POST'])
def income():
    Transactions = None
    f = request.form['filter']
    s = request.form['start']
    e = request.form['end']

    if s != '' and e != '':
        offset = datetime.utcnow() - datetime.now()
        s = datetime.strptime(request.form['start'], '%Y-%m-%d') + offset - timedelta(days=1)
        e = datetime.strptime(request.form['end'], '%Y-%m-%d') + offset + timedelta(days=1)
        Transactions = tblTransaction.query.order_by(
            tblTransaction.createdOn).filter(tblTransaction.createdOn.between(s, e), tblTransaction.isComplete == True)
    else:
        Transactions = tblTransaction.query.order_by(
            tblTransaction.createdOn).filter(tblTransaction.isComplete == True)

    data = []
    labels = []

    if Transactions:
        for transaction in Transactions:
            createdOn = None
            if f == 'daily':
                createdOn = utc2local(
                    transaction.createdOn).strftime("%Y-%m-%d")
            elif f == 'monthly':
                createdOn = utc2local(transaction.createdOn).strftime("%Y-%m")
            elif f == 'yearly':
                createdOn = utc2local(transaction.createdOn).strftime("%Y")
            obj = {
                'label': createdOn,
                'data': 0
            }

            if createdOn in labels:
                for d in data:
                    if d['label'] == createdOn:
                        d['data'] += transaction.amount
            else:
                obj['data'] = transaction.amount
                data.append(obj)
                labels.append(createdOn)

    if s == '' and e == '':
        s = current_user.createdOn.strftime("%Y-%m-%d")
        e = (datetime.utcnow() + timedelta(days=1)).strftime("%Y-%m-%d")
    return jsonify({'data': data, 'oldest': s, 'latest': e})


@route.route('/outcome', methods=['POST'])
def outcome():
    Outcome = None
    f = request.form['filter']
    s = request.form['start']
    e = request.form['end']

    if s != '' and e != '':
        offset = datetime.utcnow() - datetime.now()
        s = datetime.strptime(request.form['start'], '%Y-%m-%d') + offset - timedelta(days=1)
        e = datetime.strptime(request.form['end'], '%Y-%m-%d') + offset + timedelta(days=1)
        Outcome = tblOutcome.query.order_by(tblOutcome.createdOn).filter(
            tblOutcome.createdOn.between(s, e))
    else:
        Outcome = tblOutcome.query.order_by(tblOutcome.createdOn).all()

    data = []
    labels = []

    if Outcome:
        for outcome in Outcome:
            createdOn = None
            if f == 'daily':
                createdOn = utc2local(outcome.createdOn).strftime("%Y-%m-%d")
            elif f == 'monthly':
                createdOn = utc2local(outcome.createdOn).strftime("%Y-%m")
            elif f == 'yearly':
                createdOn = utc2local(outcome.createdOn).strftime("%Y")
            obj = {
                'label': createdOn,
                'data': 0
            }

            if createdOn in labels:
                for d in data:
                    if d['label'] == createdOn:
                        d['data'] += outcome.amount
            else:
                obj['data'] = outcome.amount
                data.append(obj)
                labels.append(createdOn)

    if s == '' and e == '':
        s = current_user.createdOn.strftime("%Y-%m-%d")
        e = (datetime.utcnow() + timedelta(days=1)).strftime("%Y-%m-%d")
    return jsonify({'data': data, 'oldest': s, 'latest': e})


@route.route('/profit', methods=['POST'])
def profit():
    Transactions = None
    # Outcomes = None
    f = request.form['filter']
    s = request.form['start']
    e = request.form['end']

    if s != '' and e != '':
        offset = datetime.utcnow() - datetime.now()
        s = datetime.strptime(request.form['start'], '%Y-%m-%d') + offset - timedelta(days=1)
        e = datetime.strptime(request.form['end'], '%Y-%m-%d') + offset + timedelta(days=1)
        Transactions = tblTransaction.query.order_by(
            tblTransaction.createdOn).filter(tblTransaction.createdOn.between(s, e), tblTransaction.isComplete == True)
        # Outcomes = tblOutcome.query.order_by(tblOutcome.createdOn).filter(
        #     tblOutcome.createdOn.between(s, e))
    else:
        Transactions = tblTransaction.query.order_by(
            tblTransaction.createdOn).filter(tblTransaction.isComplete == True)
        # Outcomes = tblOutcome.query.order_by(tblOutcome.createdOn).all()

    data = []
    labels = []

    if Transactions:
        for transaction in Transactions:
            createdOn = None
            if f == 'daily':
                createdOn = utc2local(
                    transaction.createdOn).strftime("%Y-%m-%d")
            elif f == 'monthly':
                createdOn = utc2local(transaction.createdOn).strftime("%Y-%m")
            elif f == 'yearly':
                createdOn = utc2local(transaction.createdOn).strftime("%Y")
            obj = {
                'label': createdOn,
                'data': 0
            }

            if createdOn in labels:
                for d in data:
                    if d['label'] == createdOn:
                        d['data'] += transaction.profit
            else:
                obj['data'] = transaction.profit
                data.append(obj)
                labels.append(createdOn)

    # if Outcomes:
    #     for transaction in Outcomes:
    #         if not transaction.isStock:
    #             createdOn = None
    #             if f == 'daily':
    #                 createdOn = utc2local(
    #                     transaction.createdOn).strftime("%Y-%m-%d")
    #             elif f == 'monthly':
    #                 createdOn = utc2local(
    #                     transaction.createdOn).strftime("%Y-%m")
    #             elif f == 'yearly':
    #                 createdOn = utc2local(transaction.createdOn).strftime("%Y")
    #             obj = {
    #                 'label': createdOn,
    #                 'data': 0
    #             }

    #             if createdOn in labels:
    #                 for d in data:
    #                     if d['label'] == createdOn:
    #                         d['data'] -= transaction.amount
    #             else:
    #                 obj['data'] = transaction.amount
    #                 data.append(obj)
    #                 labels.append(createdOn)

    if s == '' and e == '':
        s = current_user.createdOn.strftime("%Y-%m-%d")
        e = (datetime.utcnow() + timedelta(days=1)).strftime("%Y-%m-%d")
    return jsonify({'data': data, 'oldest': s, 'latest': e})


@route.route('/sale', methods=['POST'])
def sale():
    Transactions = None
    f = request.form['filter']
    s = request.form['start']
    e = request.form['end']

    if s != '' and e != '':
        offset = datetime.utcnow() - datetime.now()
        s = datetime.strptime(request.form['start'], '%Y-%m-%d') + offset - timedelta(days=1)
        e = datetime.strptime(request.form['end'], '%Y-%m-%d') + offset + timedelta(days=1)
        Transactions = tblTransaction.query.filter(
            tblTransaction.createdOn.between(s, e))
    else:
        Transactions = tblTransaction.query.all()

    data = []
    labels = []
    dates = []

    if Transactions:
        for transaction in Transactions:
            dates.append(datetime.strftime(transaction.createdOn, '%Y-%m-%d'))
            obj = {
                'label': transaction.sale.username,
                'data': 0
            }

            if transaction.sale.username in labels:
                for d in data:
                    if transaction.sale.username == d['label']:
                        d['data'] += transaction.profit
            else:
                obj['data'] = transaction.profit
                data.append(obj)
                labels.append(transaction.sale.username)

    if s == '' and e == '':
        s = current_user.createdOn.strftime("%Y-%m-%d")
        e = (datetime.utcnow() + timedelta(days=1)).strftime("%Y-%m-%d")
    return jsonify({'data': data, 'oldest': s, 'latest': e})


@route.route('/product_report', methods=['POST'])
def product_report():
    Transactions = None
    f = request.form['filter']
    s = request.form['start']
    e = request.form['end']

    if s != '' and e != '':
        offset = datetime.utcnow() - datetime.now()
        s = datetime.strptime(request.form['start'], '%Y-%m-%d') + offset - timedelta(days=1)
        e = datetime.strptime(request.form['end'], '%Y-%m-%d') + offset + timedelta(days=1)
        Transactions = tblTransaction.query.filter(
            tblTransaction.createdOn.between(s, e)).filter(tblTransaction.isComplete == True).all()
    else:
        Transactions = tblTransaction.query.filter(tblTransaction.isComplete == True).all()

    data = []
    labels = []
    dates = []

    if Transactions:
        for transaction in Transactions:
            dates.append(datetime.strftime(transaction.createdOn, '%Y-%m-%d'))
            obj = {
                'label': transaction.description,
                'data': 0,
                'id': transaction.product
            }

            if transaction.product in labels:
                for d in data:
                    if transaction.product == d['id']:
                        d['data'] += transaction.profit
            else:
                obj['data'] = transaction.profit
                data.append(obj)
                labels.append(transaction.product)

    if s == '' and e == '':
        s = current_user.createdOn.strftime("%Y-%m-%d")
        e = (datetime.utcnow() + timedelta(days=1)).strftime("%Y-%m-%d")
    return jsonify({'data': data, 'oldest': s, 'latest': e})


@route.route('/quantity_report', methods=['POST'])
def quantity_report():
    Transactions = None
    f = request.form['filter']
    s = request.form['start']
    e = request.form['end']

    if s != '' and e != '':
        offset = datetime.utcnow() - datetime.now()
        s = datetime.strptime(request.form['start'], '%Y-%m-%d') + offset - timedelta(days=1)
        e = datetime.strptime(request.form['end'], '%Y-%m-%d') + offset + timedelta(days=1)
        Transactions = tblTransaction.query.filter(tblTransaction.createdOn.between(s, e)).filter(tblTransaction.isComplete == True).all()
    else:
        Transactions = tblTransaction.query.filter(tblTransaction.isComplete == True).all()

    data = []
    labels = []
    dates = []

    if Transactions:
        for transaction in Transactions:
            dates.append(datetime.strftime(transaction.createdOn, '%Y-%m-%d'))
            obj = {
                'label': transaction.description,
                'data': 0,
                'id': transaction.product
            }

            if transaction.product in labels:
                for d in data:
                    if transaction.product == d['id']:
                        d['data'] += transaction.quantity
            else:   
                obj['data'] = transaction.quantity
                data.append(obj)
                labels.append(transaction.product)

    if s == '' and e == '':
        s = current_user.createdOn.strftime("%Y-%m-%d")
        e = (datetime.utcnow() + timedelta(days=1)).strftime("%Y-%m-%d")
    return jsonify({'data': data, 'oldest': s, 'latest': e})


@route.route('/income/details', methods=['POST'])
def details_income():
    data = request.form['date']
    date = datetime.strptime(data, '%Y-%m-%d')
    Transactions = tblTransaction.query.filter(cast(tblTransaction.createdOn, Date) == date, tblTransaction.isComplete == True).all()
    schema = TransactionSchema(many=True)
    transactions = schema.dump(Transactions)
    return jsonify(transactions)

@route.route('/outcome/details', methods=['POST'])
def details_outcome():
    data = request.form['date']
    date = datetime.strptime(data, '%Y-%m-%d')
    Outcomes = tblOutcome.query.filter(cast(tblOutcome.createdOn, Date) == date).all()
    schema = OutcomeSchema(many=True)
    outcomes = schema.dump(Outcomes)
    return jsonify(outcomes)

@route.route('/profit/details', methods=['POST'])
def details_profit():
    data = request.form['date']
    date = datetime.strptime(data, '%Y-%m-%d')
    Transactions = tblTransaction.query.filter(cast(tblTransaction.createdOn, Date) == date, tblTransaction.isComplete == True).all()
    schema = TransactionSchema(many=True)
    transactions = schema.dump(Transactions)
    return jsonify(transactions)

@route.route('/sale/details', methods=['POST'])
def details_sale():
    sale = request.form['date']
    Transactions = tblTransaction.query.filter(tblTransaction.sale.has(username=sale)).all()
    schema = TransactionSchema(many=True)
    transactions = schema.dump(Transactions)
    return jsonify(transactions)



@route.route('/sale_report/details', methods=['POST'])
def details_quantity_report():
    product = request.form['label']
    Transaction = tblTransaction.query.filter(tblTransaction.description.like(product)).first()
    Transactions = tblTransaction.query.filter(tblTransaction.product == Transaction.product)
    schema = TransactionSchema(many=True)
    transactions = schema.dump(Transactions)
    return jsonify(transactions)



@route.route('/financial_report')
@is_authorized('Report')
@login_required
@is_confirmed()
def financial_report():
    return render_template('views/financial_report.html')


@route.route('/account')
@is_authorized('Admin')
@login_required
@is_confirmed()
def account():
    users = tblUser.query.all()
    return render_template('views/account_report.html', users=users)


@route.route('/account/report', methods=['POST'])
@login_required
def account_report():
    activities = tblActivity.query.order_by(tblActivity.createdOn.desc()).all()
    result = []

    for a in activities:
        obj = {
            'activity': a.activity,
            'createdBy': a.createdBy,
            'createdOn': utc2local(a.createdOn).strftime("%Y-%m-%d"),
            'type': a.type,
            'id': a.id
        }
        result.append(obj)

    return jsonify(result)


@route.route('/sale_report')
@is_authorized('Report')
@login_required
@is_confirmed()
def sale_report():
    return render_template('views/sale_report.html')


@route.route('/financial', methods=['POST'])
def get_financial():
    transactions = tblTransaction.query.filter(cast(tblTransaction.createdOn, Date) == cast(datetime.utcnow(), Date)).all()
    payments = tblPayment.query.filter(cast(tblPayment.createdOn, Date) == cast(datetime.utcnow(), Date)).all()
    orders = tblOrder.query.filter(cast(tblOrder.createdOn, Date) == cast(datetime.utcnow(), Date)).all()
    expenses = tblOutcome.query.filter(cast(tblOutcome.createdOn, Date) == cast(datetime.utcnow(), Date)).all()
    stocks = tblStock.query.all()

    transactionObj = {
        'complete': [],
        'pending': []
    }

    paymentObj = {
        'complete': 0,
        'pending': 0
    }

    orderObj = {
        'complete': [],
        'process': [],
        'pending': []
    }

    expenseObj = {
        'stock': 0,
        'utility': 0,
    }

    labels = []
    stockArr = []

    if stocks:
        for stock in stocks:
            if stock.stocksOfProduct.id in labels:
                for s in stockArr:
                    if stock.stocksOfProduct.product == s['label']:
                        s['data'] += stock.quantity
            else:
                labels.append(stock.stocksOfProduct.id)
                stockObj = {
                    'label': stock.stocksOfProduct.product,
                    'data': stock.quantity
                }
                stockArr.append(stockObj)

    if payments:
        for payment in payments:
            if payment.isComplete:
                paymentObj['complete'] += payment.amount
            else:
                paymentObj['pending'] += payment.amount

    if expenses:
        for expense in expenses:
            if expense.isStock:
                expenseObj['stock'] += expense.amount
            else:
                expenseObj['utility'] += expense.amount

    if orders:
        for order in orders:
            if order.isCompleted:
                orderObj['complete'].append(order.id)
            else:
                if order.isProcessed:
                    orderObj['process'].append(order.id)
                else:
                    orderObj['pending'].append(order.id)

    if transactions:
        for transaction in transactions:
            if transaction.isComplete:
                transactionObj['complete'].append(transaction.id)
            else:
                transactionObj['pending'].append(transaction.id)
    return jsonify({'transactionObj': transactionObj, 'paymentObj': paymentObj, 'orderObj': orderObj, 'expenseObj': expenseObj, 'stockArr': stockArr})


@route.route('/advertise')
@is_authorized('Editor')
@login_required
@is_confirmed()
def advertise():
    Advertises = tblAdvertise.query.all()
    return render_template('views/advertise.html', advertises=Advertises)


@route.route('/advertise/photo/<id>', methods=['POST'])
def add_advertise(id):
    isMain = False
    if id == 'main':
        isMain = True
    jsons = []
    for file in request.files:
        photo = request.files[file]
        extension = photo.filename.rsplit('.', 1)[1]
        filename = str(uuid4()) + '.' + extension
        photo.filename = filename
        uploaded = upload.save(photo)
        id = str(uuid4())

        Advertise = tblAdvertise(
            id=id, src=filename, alt="Advertise", main=isMain, createdBy=current_user.id)
        db.session.add(Advertise)

        json = {
            'photoId': id,
            'src': filename,
        }
        jsons.append(json)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has uploaded advertise photo: '+Advertise.src, type='Upload', createdBy=current_user.id)
    db.session.add(Activity)
    db.session.commit()
    return jsonify(jsons)


@route.route('/advertise/delete/<id>', methods=['POST'])
def delete_advertise(id):
    Advertise = tblAdvertise.query.get(id)
    try:
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has deleted advertise photo: '+Advertise.src, type='Delete', createdBy=current_user.id)
        db.session.add(Activity)
        delete_photo('uploads', Advertise.src)
        db.session.delete(Advertise)
        db.session.commit()
        return jsonify({'data': 'Success'})
    except:
        return jsonify({'data': 'Failed'})

# @route.route('/')
# def index():
#     return render_template('views/index.html')


@route.route('/')
@route.route('/home')
def index():
    categories = tblCategory.query.all()
    brands = tblBrand.query.all()
    products = tblProduct.query.all()
    advertises = tblAdvertise.query.all()
    store = tblStore.query.first()
    return render_template('views/home.html', categories=categories, brands=brands, products=products, advertises=advertises, loading=store.store)


@route.route('/about')
def about():
    return render_template('views/about.html')


@route.route('/contact')
def contact():
    return render_template('views/contact.html')


@route.route('/activity')
@is_authorized('Admin')
@login_required
@is_confirmed()
def activity():
    Activities = tblActivity.query.order_by(tblActivity.createdOn.desc()).all()
    activities = []
    if Activities:
        for activity in Activities:
            actObj = {
                'activity': activity.activity,
                'type': activity.type,
                'createdOn': utc2local(activity.createdOn),
                'createdBy': '',
            }
            Users = tblUser.query.with_entities(
                tblUser.username, tblUser.id).all()
            for user in Users:
                if user.id == activity.createdBy:
                    actObj['createdBy'] = user.username
            activities.append(actObj)

    return render_template('views/activity.html', activities=activities)


@route.route('/password/change', methods=['POST'])
def change_password():
    curpwd = request.form['current']
    newpwd = request.form['newpwd']
    conpwd = request.form['conpwd']
    isMatch = bcrypt.check_password_hash(current_user.password, curpwd)
    data = ''
    if isMatch:
        if newpwd == conpwd:
            hashed_password = bcrypt.generate_password_hash(
                newpwd).decode('utf-8')
            current_user.password = hashed_password
            db.session.commit()
            data = 'Success'
        else:
            data = 'Confirm password is not matched'
    else:
        data = 'Entered password is incorrect'

    return jsonify(data)


@route.route('/product/favorite/<id>', methods=['POST'])
def product_favorite(id):
    product = tblProduct.query.get(id)
    isSaved = False
    listJson = json.loads(product.listFavorite)
    listFavorite = []
    for obj in listJson:
        listFavorite.append(obj)

    if current_user.id in listFavorite:
        listFavorite.remove(current_user.id)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has removed ' +
                               product.product+' from favorite', type='Remove', createdBy=current_user.id)
        db.session.add(Activity)
    else:
        listFavorite.append(current_user.id)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has added ' +
                               product.product+' to favorite', type='Add', createdBy=current_user.id)
        db.session.add(Activity)
        isSaved = True

    product.listFavorite = json.dumps(listFavorite)
    db.session.commit()
    return jsonify({'msg': 'Success', 'data': isSaved})


@route.route('/role')
@is_authorized('Admin')
@login_required
@is_confirmed()
def role():
    form = RoleForm()
    roles = tblRole.query.all()
    users = tblUser.query.all()
    return render_template('views/role.html', roles=roles, form=form, users=users)


@route.route('/role', methods=['POST'])
def get_roles():
    roles = tblRole.query.all()
    r = RoleSchema(many=True)
    Roles = r.dump(roles)
    return jsonify(Roles)


@route.route('/role/add', methods=['POST'])
def add_role():
    msg = {
        'role': [],
        'redirect': '',
        'name': '',
        'id': '',
    }
    role = request.form['role']
    tags = request.form['tags']
    
    id = str(uuid4())
    Modal = tblRole(id=id, role=role,
                    description=tags, createdBy=current_user.id)
    msg['name'] = role
    msg['id'] = id
    try:
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has added role: '+role, type='Add', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.add(Modal)
        db.session.commit()
        msg['redirect'] = 'Success'
        return jsonify(msg)
    except:
        msg['redirect'] = 'Faild'
        return jsonify(msg)


@route.route('/role/change/<id>', methods=['POST'])
def change_role(id):
    role = tblRole.query.get(id)
    user = tblUser.query.get(request.form['data'])
    user.roles.clear()
    user.roles.append(role)
    try:
        db.session.commit()
        return jsonify({'data': 'Success', 'role': role.role, 'tags': role.description})
    except:
        return jsonify({'data': 'Faild'})


@route.route('/role/update/<id>', methods=['POST'])
def update_role(id):
    Role = tblRole.query.get(id)
    old = Role.role
    data = request.form['data']
    Role.role = data
    try:
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has modified theme from '+old, type='Modify', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'msg': 'Success'})
    except:
        return jsonify({'msg': 'Faild'})


@route.route('/role/remove/<id>', methods=['POST'])
@login_required
def remove_role(id):
    role = tblRole.query.get(id)
    if role.isDefault:
        return jsonify({'msg': 'Default role cannot be deleted!'})
    else:
        try:
            name = role.role
            Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                                ' has deleted role: '+role.role, type='Delete', createdBy=current_user.id)
            db.session.add(Activity)
            db.session.delete(role)
            db.session.commit()
            return jsonify({'msg': 'Success'})
        except:
            return jsonify({'msg': 'Role cannot be deleted. Contact our support team for more details'})


@route.route('/role/clear/<id>', methods=['POST'])
@login_required
def clear_role(id):
    user = tblUser.query.get(id)
    if user.isAdmin:
        return jsonify({'data': 'Cannot remove default role from admin user'})
    else:
        user.roles.clear()
        try:
            Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                                ' has cleared role from user:' + user.username, type='Delete', createdBy=current_user.id)
            db.session.add(Activity)
            db.session.commit()
            return jsonify({'data': 'Success'})
        except:
            return jsonify({'data': 'Faild'})


@route.route('/admin')
@is_authorized('Admin')
@login_required
@is_confirmed()
def admin():
    users = tblUser.query.all()
    roles = tblRole.query.all()
    return render_template('views/admin.html', users=users, roles=roles)


@route.route('/admin/<id>', methods=['POST'])
def get_admin(id):
    User = tblUser.query.get(id)
    json = UserSchema()
    user = json.dump(User)
    return jsonify(user)


@route.route('/user/disable/<id>', methods=['POST'])
def disable_user(id):
    user = tblUser.query.get(id)
    if user.isAdmin:
        return jsonify({'data': 'Cannot disable admin user!'})
    else:
        user.isConfirm = not user.isConfirm
        try:
            db.session.commit()
            return jsonify({'data': 'Success', 'confirm': user.isConfirm})
        except:
            return jsonify({'data': 'Unable to to proceed your request. Please try again later'})


@route.route('/admin/create', methods=['POST'])
def create_admin():
    username = request.form['username']
    fullname = request.form['fullname']
    gender = request.form['gender']
    email = request.form['email']
    phone = request.form['phone']
    hometown = request.form['hometown']
    company = request.form['company']
    location = request.form['location']
    status = request.form['status']
    password = request.form['password']
    role = request.form['role']
    firstname = ''
    lastname = ''
    if fullname != '':
        fullname = fullname.split(' ')
        firstname = fullname[0]
        if len(fullname) > 1:
            lastname = fullname[1]
    if request.form['birthdate'] != '':
        birthdate = datetime.strptime(request.form['birthdate'], '%Y-%m-%d')
    else:
        birthdate = None
    user_id = str(uuid4())
    User = tblUser(id=user_id, username=username, firstname=firstname, lastname=lastname, gender=gender, email=email, birthdate=birthdate, password=bcrypt.generate_password_hash(password).decode('utf-8'), publicId=str(uuid4()))
    try:
        db.session.add(User)
        db.session.commit()
        if role != '':
            Role = tblRole.query.get(role)
            User.roles.append(Role)
        Profile = tblProfile(id=str(uuid4()), phone=phone, status=status,
                             company=company, location=location, hometown=hometown, createdBy=user_id)
        db.session.add(Profile)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has created user: '+User.username, type='Created', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'data': 'Success'})
    except:
        return jsonify({'data': 'Faild'})


@route.route('/admin/change/<id>', methods=['POST'])
def change_admin(id):
    user = tblUser.query.get(id)
    user.username = request.form['username']
    firstname = ''
    lastname = ''
    if request.form['fullname'] != '':
        fullname = request.form['fullname'].split(' ')
        firstname = fullname[0]
        if len(fullname) > 1:
            lastname = fullname[1]
    user.firstname = firstname
    user.lastname = lastname
    user.gender = request.form['gender']
    if request.form['birthdate'] != '':
        user.birthdate = datetime.strptime(
            request.form['birthdate'], '%Y-%m-%d')

    user.email = request.form['email']
    user.profile[0].status = request.form['status']
    user.profile[0].phone = request.form['phone']
    user.profile[0].hometown = request.form['hometown']
    user.profile[0].company = request.form['company']
    user.profile[0].location = request.form['location']
    if request.form['role'] != '':
        if user.roles:
            user.roles[0] = tblRole.query.get(request.form['role'])
        else:
            user.roles.append(tblRole.query.get(request.form['role']))

    if request.form['password'] != '':
        user.password = bcrypt.generate_password_hash(
            request.form['password']).decode('utf-8')
    try:
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has modified user: '+user.username, type='Modify', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'data': 'Success'})
    except:
        return jsonify({'data': 'Faild'})


@route.route('/expense', methods=['POST', 'GET'])
@is_authorized('Stock')
@login_required
@is_confirmed()
def expense():
    form = ExpenseForm()
    expenses = tblOutcome.query.all()
    if request.method == 'POST':
        if form.validate_on_submit():
            details = request.form['expense']
            amount = request.form['amount']
            id = str(uuid4())
            Outcome = tblOutcome(
                id=id, isStock=False, description=details, amount=amount, createdBy=current_user.id)
            db.session.add(Outcome)
            Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                                   ' has added expense: '+Outcome.description, type='Create', createdBy=current_user.id)
            db.session.add(Activity)
            db.session.commit()
            return redirect(url_for('route.expense'))
    return render_template('views/expense.html', expenses=expenses, form=form)


@route.route('/expense/delete/<id>', methods=['POST'])
def delete_expense(id):
    Outcome = tblOutcome.query.get(id)
    try:
        db.session.delete(Outcome)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has deleted expense: '+Outcome.description, type='Delete', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'data': 'Success'})
    except:
        return jsonify({'data': 'Failed'})


@route.route('/expense/save/<id>', methods=['POST'])
def save_expense(id):
    Outcome = tblOutcome.query.get(id)
    Outcome.description = request.form['details']
    Outcome.amount = request.form['amount']
    try:
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has modified expense from: ' +
                               Outcome.description+'/'+Outcome.amount, type='Modify', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'data': 'Success', 'details': Outcome.description, 'amount': Outcome.amount})
    except:
        return jsonify({'data': 'Failed'})


@route.route('/store')
@is_authorized('Editor')
@login_required
@is_confirmed()
def store():
    floorForm = FloorForm()
    storeForm = StoreForm()
    store = tblStore.query.first()
    floors = tblFloor.query.order_by(tblFloor.createdOn).all()
    for floor in floors:
        floor.rooms.sort(key=lambda x: x.createdOn, reverse=False)

    return render_template('views/store.html', storeForm=storeForm, floors=floors, floorForm=floorForm, store=store)


@route.route('/floor/add', methods=['POST'])
def add_floor():
    floor = request.form['floor']
    store = tblStore.query.first()
    id = str(uuid4())
    Floor = tblFloor(id=id, floor=floor, storeId=store.id)
    try:
        db.session.add(Floor)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has added floor: '+floor, type='Create', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'msg': 'Success', 'id': id, 'floor': floor})
    except:
        return jsonify({'msg': 'Failed'})


@route.route('/floor/delete/<id>', methods=['POST'])
def delete_floor(id):
    floor = tblFloor.query.get(id)
    try:
        db.session.delete(floor)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has deleted floor: '+floor.floor, type='Deleted', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'msg': 'Success'})
    except:
        return jsonify({'msg': 'Failed'})


@route.route('/store/save', methods=['POST'])
def save_store():
    Store = tblStore.query.first()
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username+' has modified store from: ' +
                           Store.store+'/'+Store.phone+'/'+Store.location, type='Deleted', createdBy=current_user.id)

    Store.store = request.form['store']
    Store.phone = request.form['phone']
    Store.location = request.form['place']
    try:
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'msg': 'Success'})
    except:
        return jsonify({'msg': 'Failed'})


@route.route('/room/add', methods=['POST'])
def add_room():
    room = request.form['room']
    price = request.form['price']
    hour = request.form['hour']
    floor = request.form['floor']
    id = str(uuid4())
    Room = tblRoom(id=id, room=room, price=price, hour=hour,
                   floorId=floor, createdBy=current_user.id)
    try:
        db.session.add(Room)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has added room: '+Room.room, type='Create', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'msg': 'Success', 'id': id, 'price': price, 'room': room, 'hour': hour, 'floor': floor})
    except:
        return jsonify({'msg': 'Failed to add room! Please make sure that the name is unique.'})


@route.route('/room/toggle/<id>', methods=['POST'])
def lock_room(id):
    Room = tblRoom.query.get(id)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has toggle room: '+Room.room+' from '+Room.status, type='Toggle', createdBy=current_user.id)
    if Room.status == 'Open':            
        Room.status = 'Close'
    elif Room.status == 'Close':
        Room.status = 'Open'
    try:
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'msg': 'Success', 'status': Room.status})
    except:
        return jsonify({'msg': 'Unable to close '+Room.room+' now. Please contact to our support team.'})


@route.route('/room/delete/<id>', methods=['POST'])
def delete_room(id):
    Room = tblRoom.query.get(id)
    if Room.status == 'In Process':
        return jsonify({'data': 'In process'})
    else:
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                            ' has delete room: '+Room.room, type='Delete', createdBy=current_user.id)
        try:
            db.session.delete(Room)
            db.session.add(Activity)
            db.session.commit()
            return jsonify({'data': 'Success'})
        except:
            return jsonify({'data': 'Failed to delete '+Room.room})


@route.route('/room/edit/<id>', methods=['POST'])
def edit_room(id):
    Room = tblRoom.query.get(id)
    Room.room = request.form['room']
    Room.price = request.form['price']
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has modified room: '+Room.room+' from '+Room.room+'/'+Room.price, type='Modify', createdBy=current_user.id)
    try:
        db.session.add(Activity)
        db.session.commit()
        return jsonify({'msg': 'Success'})
    except:
        return jsonify({'msg': 'Failed to edit room'})


@route.route('/customer/add', methods=['POST'])
def add_customer():
    username = request.form['fname']
    phone = request.form['phone']
    birthdate = request.form['birthdate']
    description = request.form['description']
    if birthdate == '':
        birthdate = None
    id = str(uuid4())
    Customer = tblCustomer(id=id, name=username, phone=phone,
                           birthdate=birthdate, description=description, createdBy=current_user.id)

    Owe = tblOwe(id=str(uuid4()), invoice='OWE_'+username, owedBy=id, createdBy=current_user.id)

    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has added customer: '+Customer.name, type='Add', createdBy=current_user.id)
    try:
        db.session.add(Owe)
        db.session.add(Activity)
        db.session.add(Customer)
        db.session.commit()
        return jsonify({'msg': 'Success', 'username': username, 'phone': phone, 'birthdate': birthdate, 'id': id})
    except:
        return jsonify({'msg': 'Failed to create new user! Make sure that the name is unique.'})


@route.route('/order', methods=['POST', 'GET'])
@is_authorized('Cashier')
@login_required
@is_confirmed()
def order():
    floors = tblFloor.query.order_by(tblFloor.createdOn).all()
    customers = tblCustomer.query.order_by(tblCustomer.createdOn).all()
    # orders = tblOrder.query.order_by(tblOrder.createdOn).filter(func.DATE(tblOrder.orderOn) == datetime.utcnow().date()).all()
    orders = tblOrder.query.order_by(tblOrder.createdOn).filter(
        tblOrder.isProcessed == False).all()
    date = datetime.utcnow()
    for floor in floors:
        floor.rooms.sort(key=lambda x: x.createdOn, reverse=False)
        if request.method == 'POST':
            orderSchema = OrderSchema(many=True)
            Orders = orderSchema.dump(orders)
            for order in Orders:
                Room = tblRoom.query.get(order['order'])
                order['order'] = Room.room
                order['orderOn'] = datetimefilter(
                    datetime.strptime(order['orderOn'], '%Y-%m-%dT%H:%M:%S'), '%Y-%m-%d/%I:%M %p')
                order['orderTo'] = datetimefilter(
                    datetime.strptime(order['orderTo'], '%Y-%m-%dT%H:%M:%S'), '%Y-%m-%d/%I:%M %p')
            return jsonify({'Orders': Orders})
    return render_template('views/orders.html', floors=floors, customers=customers, orders=orders, date=date)


@route.route('/order/process', methods=['POST'])
def order_process():
    orders = tblOrder.query.order_by(tblOrder.createdOn).filter(tblOrder.isProcessed == True, tblOrder.isCompleted == False).all()
    orderSchema = OrderSchema(many=True)
    Orders = orderSchema.dump(orders)
    date = datetime.utcnow()
    for order in Orders:
        Room = tblRoom.query.get(order['order'])
        order['order'] = Room.room
        order['orderOn'] = datetimefilter(
            datetime.strptime(order['orderOn'], '%Y-%m-%dT%H:%M:%S'), '%Y-%m-%d/%I:%M %p')
        order['orderTo'] = datetimefilter(
            datetime.strptime(order['orderTo'], '%Y-%m-%dT%H:%M:%S'), '%Y-%m-%d/%I:%M %p')
    return jsonify({'Orders': Orders, 'date': datetimefilter(date, '%B %d, %Y')})


@route.route('/order/add', methods=['POST'])
def add_order():
    customer = request.form['customer']
    room = request.form['room']
    _from = request.form['from']
    _to = request.form['to']
    date = request.form['date']

    UTC_OFFSET_TIMEDELTA = datetime.utcnow() - datetime.now()

    dateFrom = datetime.strptime(_from, '%Y-%m-%dT%H:%M')
    dateTo = datetime.strptime(_to, '%Y-%m-%dT%H:%M')

    utcFrom = dateFrom + UTC_OFFSET_TIMEDELTA
    utcTo = dateTo + UTC_OFFSET_TIMEDELTA

    id = str(uuid4())

    Customer = tblCustomer.query.get(customer)

    Order = tblOrder(id=id, orderOn=utcFrom, orderTo=utcTo,
                     roomId=room, orderedBy=customer, createdBy=current_user.id)

    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has added order from '+datetimefilter(utcFrom, '%Y-%m-%d %I:%M %p')+' to '+datetimefilter(utcTo, '%Y-%m-%d %I:%M %p') +' for customer '+Customer.name, type='Add', createdBy=current_user.id)
    try:
        db.session.add(Activity)
        db.session.add(Order)
        db.session.commit()
        return jsonify({'msg': 'Success'})
    except:
        return jsonify({'msg': 'Failed'})


@route.route('/order/remove/<id>', methods=['POST'])
def remove_order(id):
    Order = tblOrder.query.get(id)
    Customer = tblCustomer.query.get(Order.orderedBy)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has removed order from '+datetimefilter(Order.orderOn, '%Y-%m-%d %I:%M %p')+' to '+datetimefilter(Order.orderTo, '%Y-%m-%d %I:%M %p')+' for customer '+Customer.name, type='Deleted', createdBy=current_user.id)
    try:
        db.session.add(Activity)
        db.session.delete(Order)
        db.session.commit()
        return jsonify({'msg': 'Success'})
    except:
        return jsonify({'msg': 'Failed to delete order'})


@route.route('/room/order/<id>', methods=['POST'])
def room_order(id):
    Orders = tblOrder.query.filter(tblOrder.isCompleted == False, tblOrder.roomId == id).all()
    orderSchema = OrderSchema(many=True)
    orders = orderSchema.dump(Orders)
    for order in orders:
        order['orderOn'] = datetimefilter(datetime.strptime(
            order['orderOn'], '%Y-%m-%dT%H:%M:%S'), '%Y-%m-%dT%H:%M:%S')
        order['orderTo'] = datetimefilter(datetime.strptime(
            order['orderTo'], '%Y-%m-%dT%H:%M:%S'), '%Y-%m-%dT%H:%M:%S')
    current = datetimefilter(datetime.utcnow(), '%H:%M:%S')
    return jsonify({'orders': orders, 'now': current})


@route.route('/order/<id>')
def get_order(id):
    Order = tblOrder.query.get(id)
    products = tblProduct.query.all()
    brands = tblBrand.query.all()
    categories = tblCategory.query.all()
    store = tblStore.query.first()
    total = 0
    if Order.checkin:
        for t in Order.checkin.orderPayment.transactions:
            total += t.amount
    return render_template('views/order.html', Order=Order, products=products, brands=brands, categories=categories, total=total, store=store)


@route.route('/payment', methods=['POST'])
def payment():
    Payments = tblPayment.query.with_entities(tblPayment.id).all()
    Drawer = tblDrawer.query.get(current_user.drawer)
    transactions = json.loads(request.form['data'])
    customer = request.form['customer']
    if transactions:
        id = str(uuid4())
        invoice = 'INV' + str(len(Payments) + 1).zfill(7)
        Payment = tblPayment(
            id=id, invoice=invoice, createdBy=current_user.id, orderedBy=customer, rate=Drawer.rate, drawerId=current_user.drawer)
        db.session.add(Payment)
        totalPayment = 0
        for transaction in transactions:
            Transaction = tblTransaction.query.get(transaction)
            totalPayment += Transaction.amount
            Payment.transactions.append(Transaction)
        Payment.amount = totalPayment
        Payment.remain = totalPayment
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has ordered invoice: '+invoice, type='Order', createdBy=current_user.id)
        db.session.add(Activity)
        db.session.commit()
        p = PaymentSchema()
        result = p.dump(Payment)

        return jsonify({'result': 'Success', 'data': result, 'rate': Drawer.rate})
    else:
        return jsonify({'result': 'No transaction added'})


@route.route('/checkin/order/<order_id>', methods=['POST'])
def checkin(order_id):
    Order = tblOrder.query.get(order_id)
    Drawer = tblDrawer.query.get(current_user.drawer)
    if Order.order.status == 'Open':
        Order.order.status = 'In Process'
        Order.isProcessed = True
        Payments = tblPayment.query.with_entities(tblPayment.id).all()
        id = str(uuid4())
        pid = str(uuid4())
        invoice = 'INV' + str(len(Payments) + 1).zfill(7)
        Payment = tblPayment(
            id=pid, invoice=invoice, rate=Drawer.rate, createdBy=current_user.id, orderedBy=Order.orderedBy, drawerId=current_user.drawer)
        CheckIn = tblCheckin(id=id, createdBy=current_user.id,
                             orderId=order_id, paymentId=pid)
        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                               ' has checked in order from: '+datetimefilter(Order.orderOn)+' to '+datetimefilter(Order.orderTo), type='Check In', createdBy=current_user.id)
        
        try:
            db.session.add(Activity)
            db.session.add(Payment)
            db.session.add(CheckIn)
            db.session.commit()
            return jsonify({'msg': 'Success', 'startTime': datetimefilter(CheckIn.startedOn, '%I:%M %p'), 'startDate': datetimefilter(CheckIn.startedOn, '%B %d, %Y')})
        except:
            return jsonify({'msg': 'Failed'})
    else:
        return jsonify({'msg': Order.order.room+' is active. Please try to select another room'})


@route.route('/order/transaction/<product_id>', methods=['POST'])
def order_transaction(product_id):
    resultObj = {
        'data': {},
        'result': ''
    }

    try:
        product = tblProduct.query.get(product_id)
        data = json.loads(request.form['data'])
        description = data['details']
        oid = request.form['id']

        Order = tblOrder.query.get(oid)

        if Order.checkin:
            if Order.checkin.orderPayment.isComplete:
                resultObj['result'] = 'paid'
                return jsonify(resultObj)
            else:
                if data['colorId'] == '':
                    data['colorId'] = None

                if data['discount'] == '':
                    data['discount'] = 0

                discount = Decimal(data['discount'])
                price = Decimal(data['price'])
                quantity = Decimal(data['quantity'])

                amount = price * (1 - discount / 100)

                tid = str(uuid4())
                transaction = tblTransaction(id=tid, discount=discount, price=price,
                                            amount=amount, description=description, createdBy=current_user.id, product=product_id)
                db.session.add(transaction)

                Order.checkin.orderPayment.transactions.append(transaction)

                Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                                    ' has added transaction: '+description, type='Add', createdBy=current_user.id)
                db.session.add(Activity)

                if product.isStock:
                    if len(product.stocks) > 0:
                        total_stocks = 0
                        sum_stocks = 0
                        for stock in product.stocks:
                            if stock.color == data['colorId']:
                                sum_stocks += stock.quantity
                            elif stock.color == '':
                                sum_stocks += stock.quantity
                            total_stocks += stock.quantity
                        available = sum_stocks - quantity
                        if available >= 0:
                            sum_quantity = quantity
                            for stock in product.stocks:
                                if sum_quantity > 0 and stock.quantity > 0:
                                    qid = str(uuid4())
                                    if stock.color == data['colorId'] or stock.color == '':
                                        if stock.quantity < sum_quantity:
                                            stock_quantity = stock.quantity
                                            stock.quantity = 0
                                            Quantity = tblQuantity(
                                                id=qid, stock=stock_quantity, quantity=sum_quantity, stockId=stock.id, transactionId=tid)
                                            db.session.add(Quantity)
                                            transaction.quantity += stock_quantity
                                            sum_quantity -= stock_quantity
                                        else:
                                            Quantity = tblQuantity(
                                                id=qid, stock=sum_quantity, quantity=sum_quantity, stockId=stock.id, transactionId=tid)
                                            db.session.add(Quantity)
                                            transaction.quantity += sum_quantity
                                            stock.quantity -= sum_quantity
                                            sum_quantity = 0
                            amount *= quantity
                            transaction.amount = amount
                            total_stocks -= quantity
                            db.session.commit()
                            resultObj['result'] = 'success'
                            resultObj['data'] = {'id': tid, 'amount': amount, 'stock': total_stocks,
                                                'quantity': quantity, 'price': price, 'isStock': True, 'discount': discount}
                        else:
                            resultObj['result'] = 'not enough'
                            resultObj['data'] = {
                                'message': str(sum_stocks)
                            }
                    else:
                        resultObj['result'] = 'out of stock'
                else:
                    transaction.quantity = quantity
                    amount *= quantity
                    transaction.amount = amount
                    db.session.commit()
                    resultObj['result'] = 'success'
                    resultObj['data'] = {'id': tid, 'amount': amount, 'quantity': quantity,
                                        'price': price, 'isStock': False, 'discount': discount}
                return jsonify(resultObj)
        else:
            resultObj['result'] = 'checkin'
            return jsonify(resultObj)
    except:
        resultObj['result'] = 'error'
        return jsonify(resultObj)


@route.route('/payments/<id>', methods=['POST'])
def get_payments(id):
    Payment = tblPayment.query.get(id)

    p = PaymentSchema()
    payment = p.dump(Payment)
    return jsonify({'data': payment})


@route.route('/payment/<id>', methods=['POST'])
def get_payment(id):
    Drawer = tblDrawer.query.get(current_user.drawer)
    Payment = tblPayment.query.get(id)
    customer = request.form['customer']
    if customer != '':
        Payment.orderedBy = customer
        db.session.commit()
    if Payment.transactions:
        total = 0
        for Transaction in Payment.transactions:
            quantity = Transaction.quantity
            if Transaction.quantities:
                quantity = 0
                for q in Transaction.quantities:
                    quantity += q.quantity
                Transaction.quantity = quantity
            total += Transaction.amount
            if Transaction not in Payment.transactions:
                Payment.transactions.append(Transaction)
        Payment.amount = total
        Payment.remain = total
    db.session.commit()

    p = PaymentSchema()
    payment = p.dump(Payment)
    return jsonify({'data': payment, 'rate': Drawer.rate})


@route.route('/checkout/order/<order_id>', methods=['POST'])
def checkout_order(order_id):
    Order = tblOrder.query.get(order_id)

    isCompleted = False

    if Order.checkout:
        isCompleted = True
    
    if not isCompleted:
        duration = int(request.form['duration'])
        actual_duration = duration
        duration_type = request.form['type']

        if duration == '':
            duration = 0

        quantity = ''

        # Latest updated
        if duration_type != 'min':
            if duration_type == 'h':
                duration *= 60
            if duration_type == 'd':
                duration *= 1440
            if duration_type == 'm':
                duration *= 43800
            if duration_type == 'y':
                duration *= 525600
            quantity = str(actual_duration) + duration_type
        else:
            if actual_duration / 525600 > 1:
                quantity = str(int(actual_duration / 525600)) + 'y '
                actual_duration %= 525600
            if actual_duration / 43800 > 1:
                actual_duration += str(int(actual_duration / 43800)) + 'm '
                actual_duration %= 43800
            if actual_duration / 1440 > 1:
                quantity += str(int(actual_duration / 1440)) + 'd '
                actual_duration %= 1440
            if actual_duration / 60 > 1:
                quantity += str(int(actual_duration / 60)) + 'h '
                actual_duration %= 60
            if actual_duration > 1:
                quantity += str(actual_duration) + 'min'
            

        totalPrice = (float(Order.order.price) * duration) / 60

        description = Order.order.room  + ', ' + quantity

        cid = str(uuid4())
        CheckOut = tblCheckout(id=cid, totalHour=duration, createdBy=current_user.id, orderId=order_id)
        
        
        tid = str(uuid4())

        transaction = tblTransaction(id=tid, price=round(Decimal(totalPrice), 4), quantity=1, discount=0, isEditable=False,
                                    amount=round(Decimal(totalPrice), 4), description=description, createdBy=current_user.id, product=Order.order.id)
        
        if totalPrice == 0:
            json = None
        else:
            json = {
                'id': tid,
                'cost': totalPrice,
                'discount': '',
                'quantity': 1,
                'amount': totalPrice,
                'description': description
            }
            db.session.add(transaction)
            Order.checkin.orderPayment.transactions.append(transaction)

        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                                ' has checked out order from: '+datetimefilter(Order.orderOn)+' to '+datetimefilter(Order.orderTo), type='Check Out', createdBy=current_user.id)
        try:
            db.session.add(Activity)
            db.session.add(CheckOut)
            db.session.commit()
            return jsonify({'msg': 'Success', 'paymentId': Order.checkin.orderPayment.id, 'transaction': json})
        except:
            return jsonify({'msg': 'Failed to check out! Please check your connection and try again.'})
    else:
        return jsonify({'msg': 'Order has already checked out!'})

@route.route('/invoice/<id>')
def print_invoice(id):
    Payment = tblPayment.query.get(id)
    Store = tblStore.query.first()
    return render_template('views/invoice.html', payment=Payment, store=Store)


@route.route('/invoice/owe/<id>')
def print_invoice_owe(id):
    Invoice = tblInvoice.query.get(id)
    Store = tblStore.query.first()
    return render_template('views/invoice_owe.html', payment=Invoice, store=Store)


@route.route('/backup', methods=['POST'])
def backup():
    try:
        strtime = time.strftime('%Y-%m-%d-%H%M%S')
        dirs = 'backup'
        if not os.path.exists(dirs):
            os.makedirs(dirs)
        cmd = "mysqldump -u"+mysqlObj['user']+" -p"+mysqlObj['password']+" "+mysqlObj['database']+" > backup/backup_"+strtime+".sql"
        os.system(cmd)
        return jsonify({'result': 'Success'})
    except: 
        return jsonify({'result': 'Failed'})

@route.route('/restore', methods=['POST'])
def restore():
    try:
        strtime = time.strftime('%Y-%m-%d-%H%M%S')
        dirs = 'backup'
        if not os.path.exists(dirs):
            os.makedirs(dirs)
        backup = "mysqldump -u"+mysqlObj['user']+" -p"+mysqlObj['password']+" "+mysqlObj['database']+" > backup/restore_"+strtime+".sql"
        os.system(backup)
        _file = request.files['file']
        if _file.filename.split('.')[1] == 'sql':
            restore_file = os.path.abspath('backup/'+_file.filename)
            restore = "mysql -u"+mysqlObj['user']+" -p"+mysqlObj['password']+" "+mysqlObj['database']+" < "+restore_file
            os.system(restore)
            return jsonify({'msg': 'Restore completed successfully', 'data': 'Success'})
        else:
            return jsonify({'msg': 'The selected file is not valid!', 'data': 'Failed'})
    except: 
        return jsonify({'msg': 'Failed to backup!', 'data': 'Failed'})

@route.route('/language/change', methods=['POST'])
def change_lang():
    lang = request.form['data']
    user = tblUser.query.get(current_user.id)
    Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                           ' has modified language from '+user.language, type='Modify', createdBy=current_user.id)
    db.session.add(Activity)
    user.language = lang
    db.session.commit()
    return jsonify({'lang': lang})


@route.route('/customer/owe/<id>', methods=['POST'])
def get_owe(id):
    Customer = tblCustomer.query.get(id)
    json = CustomerSchema()
    customer = json.dump(Customer)
    return jsonify(customer)


@route.route('/checkout/owe/<id>', methods=['POST'])
def checkout_owe(id):
    customer = tblCustomer.query.get(id)
    drawer = tblDrawer.query.get(current_user.drawer)

    moneys = []
    listMoney = []
    if drawer:
        rate = drawer.rate
        listMoney = sorted(drawer.moneys, key=operator.attrgetter('value'), reverse=True)
    else:
        rate = 4000
    jsonObj = json.loads(request.form['data'])
    amounts = jsonObj['amounts']

    amount = 0
    total = 0
    remain = 0

    receiveKHR = 0
    receiveUSD = 0

    amountUSD = 0
    amountKHR = 0

    paidKHR = 0
    paidUSD = 0

    total_change = 0

    for a in amounts:
        if a['currency'] == 'KHR':
            amountKHR += Decimal(a['amount'])
            a['amount'] = Decimal(a['amount']) / 4000
            paidKHR += Decimal(a['amount'])
        else:
            amountUSD += Decimal(a['amount'])
            paidUSD += Decimal(a['amount'])
        amount += Decimal(a['amount'])

    if amount > 0:
        receiveOweUSD = amountUSD
        receiveOweKHR = amountKHR

        paidKHR = round(paidKHR, 3)

        total_receive = str(amountUSD)+','+str(amountKHR)
        totalUSD = 0
        totalKHR = 0

        iid = str(uuid4())

        Invoice = tblInvoice(id=iid, amount=customer.customerOwe[0].amount, paid=customer.customerOwe[0].paid, remain=customer.customerOwe[0].remain, receive=customer.customerOwe[0].receive, rate=rate, createdBy=current_user.id, orderedBy=customer.id)

        if customer:
            customer.customerOwe[0].rate = rate
            customer.customerOwe[0].amount = 0
            customer.customerOwe[0].remain = 0
            customer.customerOwe[0].paid = 0

            oweUSD = customer.customerOwe[0].receive.split(',')[0]
            oweKHR = customer.customerOwe[0].receive.split(',')[1]

            for payment in sorted(customer.customerOwe[0].owePayments, key=operator.attrgetter('remain'), reverse=False):
                if not payment.isComplete:
                    Invoice.invoicePayments.append(payment)
                    total += payment.amount

                    receiveUSD = Decimal(payment.receive.split(',')[0])
                    receiveKHR = Decimal(payment.receive.split(',')[1])

                    totalUSD += receiveUSD
                    totalKHR += receiveKHR
                    
                    if round(paidUSD, 3) >= round(payment.remain, 3):
                        payment.receive = str(payment.remain + receiveUSD) +','+str(round(receiveKHR, 0))
                        paidUSD -= payment.remain
                        amountUSD -= payment.remain
                        receiveOweUSD = amountUSD
                        payment.paid += payment.remain
                        customer.customerOwe[0].remain = 0
                        customer.customerOwe[0].paid = 0
                        customer.customerOwe[0].receive = '0,0'
                                            
                        oweUSD = 0
                        oweKHR = 0
                        payment.remain = 0
                        payment.isComplete = True
                        for transaction in payment.transactions:
                            transaction.isComplete = True
                            transaction.profit = transaction.amount
                            if transaction.quantities:
                                for quantity in transaction.quantities:
                                    transaction.profit -= quantity.soq.cost * quantity.quantity
                    else:
                        remainKHR = payment.remain
                        remainKHR -= round(paidUSD, 3)
                        
                        payment.paid += paidUSD
                        payment.remain = remainKHR

                        remainUSD = paidUSD

                        paidUSD = 0

                        remainKHR = round(remainKHR * rate / 4000, 3)
                        if paidKHR >= remainKHR:
                            payment.receive = str(receiveUSD + remainUSD)+','+str(round(receiveKHR + (remainKHR * rate), 0))                        
                            
                            amountKHR -= remainKHR * 4000
                            receiveOweKHR = amountKHR
                            paidKHR -= remainKHR
                            customer.customerOwe[0].remain = 0
                            customer.customerOwe[0].paid = 0
                            customer.customerOwe[0].receive = '0,0'

                            oweKHR = 0
                            oweUSD = 0
                            payment.paid += payment.remain
                            payment.remain = 0
                            payment.isComplete = True
                            for transaction in payment.transactions:
                                transaction.isComplete = True
                                transaction.profit = transaction.amount
                                if transaction.quantities:
                                    for quantity in transaction.quantities:
                                        transaction.profit -= quantity.soq.cost * quantity.quantity
                        else:
                            receiveKHR = amountKHR
                            payment.paid += (paidKHR * 4000 / rate)
                            payment.remain -= paidKHR * 4000 / rate

                            customer.customerOwe[0].amount += payment.amount
                            customer.customerOwe[0].remain += payment.amount - payment.paid
                            customer.customerOwe[0].paid += payment.paid
                            
                            receive = str(amountUSD + Decimal(payment.receive.split(',')[0]))+','+str(round(receiveKHR, 0) + Decimal(payment.receive.split(',')[1]))
                            payment.receive = receive

                            oweReceive = str(receiveOweUSD + Decimal(oweUSD)) + ',' + str(receiveOweKHR + Decimal(oweKHR))
                            customer.customerOwe[0].receive = oweReceive

                            amountUSD = 0
                            amountKHR = 0
                            paidKHR = 0
                            remain += payment.remain


            total_receive = str(Decimal(total_receive.split(',')[0]) + totalUSD) +','+ str(Decimal(total_receive.split(',')[1]) + totalKHR)

            if paidKHR > 0 or paidUSD > 0:
                change = paidKHR + paidUSD
                total_change = change
                moneyObj = {
                    'money': change,
                    'currency': 'USD'
                }
                for money in listMoney:
                    convertMoney = 0
                    if money.currency == 'KHR':
                            convertMoney = money.money / 4000
                    else:
                        convertMoney = money.money
                    if money.unit > 0 and convertMoney <= change:
                        for unit in range(int(money.unit)):
                            if convertMoney <= change:
                                moneys.append({
                                    'money': money.money,
                                    'currency': money.currency
                                })
                                money.unit -= 1
                                change -= convertMoney
                                moneyObj['money'] = change

                moneys.append(moneyObj)

        Activity = tblActivity(id=str(uuid4()), activity=current_user.username +
                            ' has checkout owe total: '+str(amount), type='Checkout', createdBy=current_user.id)

        Invoice.paid = Invoice.amount - remain
        Invoice.receive = total_receive
        Invoice.remain = remain
        Invoice.change = total_change
        try:
            db.session.add(Activity)
            db.session.add(Invoice)
            db.session.commit()
                
            return jsonify({'result': 'Success', 'change': moneys, 'rate': rate, 'total_change': total_change, 'total_receive': total_receive, 'total_remain': remain, 'total_paid': amount, 'id': iid})
        except:
            return jsonify({'result': 'Failed', 'rate': rate})
    else:
        return jsonify({'result': 'Failed', 'rate': rate})

@route.route('/customer')
def customer():
    customers = tblCustomer.query.all()
    return render_template('views/customer.html', customers=customers)

@route.route('/customer/edit/<id>', methods=['POST'])
def edit_customer(id):
    Customer = tblCustomer.query.get(id)
    json = CustomerSchema()
    customer = json.dump(Customer)
    return jsonify(customer)

@route.route('/customer/save/<id>', methods=['POST'])
def save_customer(id):
    customer = tblCustomer.query.get(id)
    if request.form['birthdate'] == '':
        customer.birthdate = None
    else:
        customer.birthdate = request.form['birthdate']
    customer.name = request.form['customer']
    customer.phone = request.form['phone']
    customer.description = request.form['description']
    try:
        db.session.commit()
        return jsonify({'result': 'Success'})
    except:
        return jsonify({'result': 'Faild'})
   