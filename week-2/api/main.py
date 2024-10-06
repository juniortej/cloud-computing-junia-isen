from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def hello_world():
    return jsonify(message="Hello, World! Welcome to Azure App Service")

@app.route("/api/data")
def get_data():
    data = {"data": "This is a sample API deployed on Azure"}
    return jsonify(data)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
