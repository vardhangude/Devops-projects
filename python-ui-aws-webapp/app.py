from flask import Flask, render_template

# The Flask application must be named 'application' for AWS services like Elastic Beanstalk
# and others to discover it automatically.
application = Flask(__name__)

@application.route('/')
def welcome_page():
    # Renders the HTML template from the 'templates' directory.
    return render_template('index.html')

if __name__ == '__main__':
    # This is a development server. For production, a WSGI server like Gunicorn should be used.
    # The start_server.sh script in the initial report handles this for you.
    application.run(host='0.0.0.0', port=5000) 
