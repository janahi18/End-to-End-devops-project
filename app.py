from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Hello from CI/CD Pipeline! 🚀</h1><p>Deployed via Azure DevOps</p>"

@app.route("/health")
def health():
    return {"status": "healthy", "version": "v1.0"}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)