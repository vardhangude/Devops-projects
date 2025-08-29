from flask import Flask

app = Flask(__name__)

@app.route('/')

def hello_vardhan():
    a = "Hello"
    b = "Vardhan"
    return a + " " + b
