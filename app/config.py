import os

class Config():
    SECRET_KEY = '098c75537d0816443c'
    SQLALCHEMY_DATABASE_URI = "mysql+pymysql://root:myroot@localhost/restaurant"
    SQLALCHEMY_TRACK_MODIFICATIONS = True
    UPLOADED_PHOTOS_DEST = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'static/uploads')