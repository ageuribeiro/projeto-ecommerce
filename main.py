from flask import Flask, redirect, render_template, url_for


app = Flask(__name__, template_folder="templates", static_folder="static")


@app.route('/')
def home():
    return render_template('index.html')

@app.route('/login')
def login():
    return render_template('login.html')

@app.route('/register')
def register():
    return render_template('register.html')

# Inicialiazando a aplicação
if __name__ == '__main__':
    app.run(debug=True, port=5000)
