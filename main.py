# main.py

from flask import Blueprint, render_template
from flask_login import login_required, current_user

main = Blueprint('main', __name__)

@main.route('/')
def index():
    image_names = os.listdir('conv')
    return render_template('index.html', image_name=image_names)

@main.route('/profile')
@login_required
def profile():
    if current_user.name != 'John Wick':
        return render_template('profile.html', name=current_user.name)
    else:
        return render_template('profile.html', name='Oh shit it\'s John Wick')
