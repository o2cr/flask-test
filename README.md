[![Build Status](https://travis-ci.com/o2cr/flask-test.svg?token=HNaqxqDaGbs4tkJkBe5Y&branch=master)](https://travis-ci.com/o2cr/flask-test)
# flask-test  
  
Used for a project I am doing. 

## Installation
0. To run this, you need SQLite and the latest version of Python. Refer your package manager on how to install them.
1. Clone this repository
2. Install dependencies from `requirements.txt`
```bash
pip install -r requirements.txt
```
3. Create a new environment variable
```bash
export FLASK_APP=flask_test
```
4. Run while in your home folder. If all goes well it should run at `http://localhost:3000`. Use a reverse proxy if you want to use Nginx or something.
```bash
flask run
```
5. Use the `shuffle.sh` script to superimpose the images again. You can use a cronjob if you want to schedule it every `x $time`. You need to install ImageMagick as well.
