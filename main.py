from flask import Flask, jsonify, url_for, request
from flask.ext.httpauth import HTTPBasicAuth
import sys, flask
import model

app = Flask(__name__)
auth = HTTPBasicAuth()

def spcall(qry, param, commit=False):
    try:
        dbo = model.DBconn()
        cursor = dbo.getcursor()
        cursor.callproc(qry, param)
        res = cursor.fetchall()
        if commit:
            dbo.dbcommit()
        return res
    except:
        res = [("Error: " + str(sys.exc_info()[0]) + " " + str(sys.exc_info()[1]),)]
    return res

@auth.get_password
def getpassword(username):
    return 'default'

@app.route('/login', methods=['POST'])
@auth.login_required
def login():
    params = request.get_json()

    res = spcall('login', (params['username'], params['password']))
    print str(res[0][0])
    if 'Error' in str(res[0][0]):
        return jsonify(status='error', url='Antidote(LogIn).html')

    return jsonify(status='ok', url='Antidote.html')

@app.route('/Quiz/answer/get1', methods=['POST'])
def postanswer1():
    params = request.get_json()
    answer1 = params["answer1"]
    res = spcall('postanswer1', (answer1), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})
@app.route('/Quiz/answer/get2', methods=['POST'])
def postanswers2():
    params = request.get_json()
    answer2 = params["answer2"]
    res = spcall('postanswer2', (answer2), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get3', methods=['POST'])
def postanswers3():
    params = request.get_json()
    answer3 = params["answer3"]
    res = spcall('postanswer3', (answer3), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})
@app.route('/Quiz/answer/get4', methods=['POST'])
def postanswers4():
    params = request.get_json()
    answer4 = params["answer4"]
    res = spcall('postanswer4', (answer4), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get5', methods=['POST'])
def postanswers5():
    params = request.get_json()
    answer5 = params["answer5"]
    res = spcall('postanswer5', (answer5), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})
@app.route('/Quiz/answer/get6', methods=['POST'])
def postanswers6():
    params = request.get_json()
    answer6 = params["answer6"]
    res = spcall('postanswer6', (answer6), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})
@app.route('/Quiz/answer/get7', methods=['POST'])
def postanswers7():
    params = request.get_json()
    answer7 = params["answer7"]
    res = spcall('postanswer7', (answer7), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})
@app.route('/Quiz/answer/get8', methods=['POST'])
def postanswers8():
    params = request.get_json()
    answer8 = params["answer8"]
    res = spcall('postanswer8', (answer8), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get9', methods=['POST'])
def postanswers9():
    params = request.get_json()
    answer9 = params["answer9"]
    res = spcall('postanswer9', (answer9), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get10', methods=['POST'])
def postanswers10():
    params = request.get_json()
    answer10 = params["answer10"]
    res = spcall('postanswer10', (answer10), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get11', methods=['POST'])
def postanswers11():
    params = request.get_json()
    answer11 = params["answer11"]
    res = spcall('postanswer11', (answer11), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get12', methods=['POST'])
def postanswers12():
    params = request.get_json()
    answer12 = params["answer12"]
    res = spcall('postanswer12', (answer12), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get13', methods=['POST'])
def postanswers13():
    params = request.get_json()
    answer13 = params["answer13"]
    res = spcall('postanswer13', (answer13), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get14', methods=['POST'])
def postanswers14():
    params = request.get_json()
    answer14 = params["answer14"]
    res = spcall('postanswer14', (answer14), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get15', methods=['POST'])
def postanswers15():
    params = request.get_json()
    answer15 = params["answer15"]
    res = spcall('postanswer15', (answer15), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get16', methods=['POST'])
def postanswers16():
    params = request.get_json()
    answer16 = params["answer16"]
    res = spcall('postanswer16', (answer16), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get17', methods=['POST'])
def postanswers17():
    params = request.get_json()
    answer17 = params["answer17"]
    res = spcall('postanswer17', (answer17), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/answer/get18', methods=['POST'])
def postanswers18():
    params = request.get_json()
    answer18 = params["answer18"]
    res = spcall('postanswer18', (answer18), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/total_anx', methods=['POST'])
def total_anx():
    res = spcall('total_anx', ('1'), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/Quiz/total_dep', methods=['POST'])
def total_dep():
    res = spcall('total_dep', ('1'), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})




# @app.route('/answer', methods=['POST'])
# def answer():
#     params = request.get_json()
#     one = params["one"]
#     two = params["two"]
#     three = params["three"]
#     four = params["four"]
#     five = params["five"]
#     six = params["six"]
#     seven = params["seven"]
#     eight = params["eight"]
#     res = spcall('answer', (one, two, three, four, five, six, seven, eight), True)
#
#     if 'Error' in res[0][0]:
#         return jsonify({'status': 'error', 'message': res[0][0]})
#     return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/get_anxresult', methods=['GET'])
def get_anxresult():
    res = spcall('get_anxresult', (), True)

    if 'Error' in str(res[0][0]):
        return jsonify({'status': 'error', 'message': res[0][0]})

    recs = []
    for r in res:
     recs.append({"totalscore": str(r[0]), "diagnosis": str(r[1])})
    return jsonify({'status': 'ok', 'entries': recs, 'count': len(recs)})


@app.route('/get_depresult', methods=['GET'])
def get_depresult():
    res = spcall('get_depresult', (), True)

    if 'Error' in str(res[0][0]):
        return jsonify({'status': 'error', 'message': res[0][0]})

    recs = []
    for r in res:
     recs.append({"totalscore": str(r[0]), "diagnosis": str(r[1])})
    return jsonify({'status': 'ok', 'entries': recs, 'count': len(recs)})


@app.route('/review_anx_answers', methods=['GET'])
def review_anx():
    res = spcall('review_anx_answers', (), True)

    if 'Error' in str(res[0][0]):
        return jsonify({'status': 'error', 'message': res[0][0]})

    recs = []
    for r in res:
     recs.append({"anx_qstn": str(r[0]), "question": str(r[1]), "correspondence": str(r[2]), "points": str(r[3])})
    return jsonify({'status': 'ok', 'entries': recs, 'count': len(recs)})

@app.route('/review_dep_answers', methods=['GET'])
def review_dep():
    res = spcall('review_dep_answers', (), True)

    if 'Error' in str(res[0][0]):
        return jsonify({'status': 'error', 'message': res[0][0]})

    recs = []
    for r in res:
     recs.append({"dep_qstn": str(r[0]), "question": str(r[1]), "correspondence": str(r[2]), "points": str(r[3])})
    return jsonify({'status': 'ok', 'entries': recs, 'count': len(recs)})







@app.route('/SignUp/first_name/getfname', methods=['POST'])
def first_name():
    params = request.get_json()
    fname = params["fname"]
    res = spcall('first_name', (fname), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})


@app.route('/SignUp/last_name/getlname', methods=['POST'])
def last_name():
    params = request.get_json()
    lname = params["lname"]
    res = spcall('last_name', (lname), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})

@app.route('/SignUp/user_name/getuname', methods=['POST'])
def user_name():
    params = request.get_json()
    uname = params["uname"]
    res = spcall('user_name', (uname), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})




@app.route('/SignUp/password/getpword', methods=['POST'])
def password():
    params = request.get_json()
    pword = params["pword"]
    res = spcall('password', (pword), True)

    if 'Error' in res[0][0]:
        return jsonify({'status': 'error', 'message': res[0][0]})
    return jsonify({'status': 'ok', 'message': res[0][0]})







@app.after_request
def add_cors(resp):
    resp.headers['Access-Control-Allow-Origin'] = flask.request.headers.get('Origin', '*')
    resp.headers['Access-Control-Allow-Credentials'] = True
    resp.headers['Access-Control-Allow-Methods'] = 'POST, OPTIONS, GET, PUT, DELETE'
    resp.headers['Access-Control-Allow-Headers'] = flask.request.headers.get('Access-Control-Request-Headers',
                                                                             'Authorization')
    # set low for debugging

    if app.debug:
        resp.headers["Access-Control-Max-Age"] = '1'
    return resp

if __name__=='__main__':
    app.run(debug=True)
