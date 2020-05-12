from flask import Flask
app = Flask(__name__)
@app.route("/")
def hello(environ, start_response):
    status = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    body = [bytes(i + '\n', 'ascii') for i in environ['QUERY_STRING'].split('&')]
    start_response(status, headers)
    return body

if __name__ == "__main__":
    app.run(host='0.0.0.0')