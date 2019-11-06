from flask import (
    Blueprint,
)


bp = Blueprint('main', __name__)


@bp.route('/')
def main():
    return "Flask Gunicorn React Docker App"


@bp.route('/test', methods=['GET'])
def test():
    return {'data': 'This is a test...'}
