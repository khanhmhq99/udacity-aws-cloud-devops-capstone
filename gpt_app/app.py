from flask import Flask, render_template # request, jsonify, redirect
from flask.logging import create_logger
import logging

app = Flask(__name__, template_folder='template', static_folder='static')
LOG = create_logger(app)
LOG.setLevel(logging.INFO)

@app.route("/")
def home():
    return render_template('index.html')


@app.route("/single")
def single():
    return render_template('single.html')


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080, debug=True)  # specify port=80
    LOG.info("Running the server app on http://0.0.0.0:8080")
