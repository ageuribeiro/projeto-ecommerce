from flask import Flask, request, render_template
from flask_cors import CORS

app = Flask(__name__, template_folder="templates", static_folder="static")


@app.route('/')
def home():
    '''Rota principal'''
    return render_template('index.html')

@app.route('/login')
def login():
    '''Rota para a pagina de login'''
    return render_template('login.html')

@app.route('/register')
def register():
    '''Rota para registro'''
    return render_template('register.html')

# Inicialiazando a aplicação
if __name__ == '__main__':
    app.run(debug=True, port=5000)
