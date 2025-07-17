from flask import Flask, jsonify, request

app = Flask(__name__)

users = []

@app.route('/')
def home():
    return "IAM API is running!"

@app.route('/create_user', methods=['POST'])
def create_user():
    data = request.get_json()
    users.append(data)
    return jsonify({"message": "User created", "user": data}), 201

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

