from flask import Flask, jsonify, request
from Regencydbutils import get_author_recommendation

app = Flask(__name__)

@app.route('/author/<answer>')
def suggested_author(answer):
    result = get_author_recommendation(answer)
    jsonifyresult = jsonify(result)
    return jsonifyresult

if __name__ == '__main__':
    app.run(debug=True, port = 5001)