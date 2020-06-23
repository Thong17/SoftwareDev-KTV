from app import app, bcrypt, db, login_manager
from app import tblUser, tblBrand, tblCategory
from app import LoginForm, RegisterForm, CategoryForm
from app import CategorySchema
from flask import render_template, redirect, request, jsonify
from flask_login import login_user, logout_user, login_required, current_user
from uuid import uuid4
import json


@login_manager.user_loader
def load_user(id):
    return tblUser.query.get(id)


@app.route('/')
@login_required
def index():
    return render_template('views/index.html')


@app.route('/login', methods=['POST', 'GET'])
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


@app.route('/register', methods=['POST', 'GET'])
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
                db.session.commit()

                return redirect('/')
            except SQLAlchemyError as error:
                print(str(error))
                db.session.rollback()
                return 'Register failed'
    return render_template('views/register.html', form=form)


@app.route('/logout', methods=['POST'])
def logout():
    logout_user()
    return redirect('/login')


@app.route('/setting')
@login_required
def setting():
    return render_template('views/setting.html')


@app.route('/custome')
@login_required
def custome():
    return render_template('views/custome.html')


@app.route('/category', methods=['POST', 'GET'])
@login_required
def categories():
    form = CategoryForm()
    categories = tblCategory.query.all()
    if request.method == 'POST':
        category = request.form['category']
        description = request.form['description']
        Model = tblCategory(id=str(uuid4()), category=category, description=description, createdBy=current_user.id)
        try:
            db.session.add(Model)
            db.session.commit()
            return redirect('/category')
        except:
            return 'Failed'

    return render_template('views/category.html', form=form, categories=categories)


@app.route('/category/<id>', methods=['POST'])
def category(id):
    if request.form['data']:
        id = request.form['data']
        category = tblCategory.query.get(id)
        json = CategorySchema()
        result = json.dump(category)
    return jsonify(result)


@app.route('/category/property', methods=['POST'])
@login_required
def add_property():
    return ''
