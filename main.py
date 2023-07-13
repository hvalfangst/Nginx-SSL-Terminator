from flask import Flask

app = Flask(__name__)


@app.route('/')
def meet_and_greet():
    return "Meet-and-greet with interdimensional kinsmen is not for the faint of heart"


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
