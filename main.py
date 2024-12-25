from flask import Flask, jsonify
import solver.solver as solver

app = Flask(__name__)

@app.route('/solve')
async def async_view():
    response = await solver("https://modrinth.com/auth/sign-up","0x4AAAAAAAHWfmKCm7cUG869");
    return jsonify(response)

if __name__ == '__main__':
    app.run(debug=True)
