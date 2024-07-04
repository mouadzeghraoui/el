from flask import Flask, request, jsonify
from sentence_transformers import SentenceTransformer

app = Flask(__name__)
model = SentenceTransformer('all-MiniLM-L6-v2')

@app.route('/embed', methods=['POST'])
def embed():
    sentences = request.json['sentences']
    embeddings = model.encode(sentences)
    return jsonify(embeddings.tolist())

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
