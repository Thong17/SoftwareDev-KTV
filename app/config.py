import os

mysqlObj = {
    'user': 'root',
    'password': 'myroot',
    'host': 'localhost',
    'database': 'softdev'
}

class Config():
    SECRET_KEY = '098c75537d0816443c'
    SQLALCHEMY_DATABASE_URI = "mysql+pymysql://"+mysqlObj['user']+":"+mysqlObj['password']+"@"+mysqlObj['host']+"/"+mysqlObj['database']
    SQLALCHEMY_TRACK_MODIFICATIONS = True
    UPLOADED_PHOTOS_DEST = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'static/uploads')