from flask import Flask, render_template



def create_app():
    app = Flask("TODO Manager")
    app.config.from_mapping(
        DATABASE= 'Todo'
    )
    app.secret_key="1995"
    
    from . import login
    app.register_blueprint(Login.bp)

    from . import db 
    db.init_app(app) 
    
    from . import todo
    app.register_blueprint(todo.bp)
    
    @app.route("/")
    def index():
        return render_template('index.html')


    return app
    
