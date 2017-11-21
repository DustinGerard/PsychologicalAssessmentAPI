function login(){
console.log($("#usr").val());
console.log($("#pwd").val());
$.ajax(
      {
        url: 'http://127.0.0.1:5000/login',
        contentType: 'application/json; charset=utf-8',
        data: JSON.stringify({
          'username': $("#usr").val(),
          'password': $("#pwd").val()
        }),
        type: "POST",
        dataType: "json",
        error: function (e) {
            alert('Something Went Wrong!!');
        },
        success: function (response) {
            window.location = response.url;
        },
          beforeSend: function(xhrObj){
            xhrObj.setRequestHeader("Authorization",
                "Basic " + btoa("ako:default"));
      }

      });
}

function postanswer1() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get1",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer1': $("#answer1").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
   /* redirect1();*/
}

function postanswer2() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get2",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer2': $("#answer2").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {


                }
                else {


                }
            }
        });
    /*redirect2();*/
}
function postanswer3() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get3",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer3': $("#answer3").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}
function postanswer4() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get4",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer4': $("#answer4").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}
function postanswer5() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get5",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer5': $("#answer5").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}
function postanswer6() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get6",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer6': $("#answer6").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}
function postanswer7() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get7",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer7': $("#answer7").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}
function postanswer8() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get8",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer8': $("#answer8").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}

function postanswer9() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get9",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer9': $("#answer9").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}

function postanswer10() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get10",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer10': $("#answer10").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}

function postanswer11() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get11",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer11': $("#answer11").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}

function postanswer12() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get12",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer12': $("#answer12").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}

function postanswer13() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get13",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer13': $("#answer13").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}

function postanswer14() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get14",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer14': $("#answer14").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}

function postanswer15() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get15",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer15': $("#answer15").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}

function postanswer16() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get16",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer16': $("#answer16").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}

function postanswer17() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get17",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer17': $("#answer17").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}

function postanswer18() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/answer/get18",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'answer18': $("#answer18").val()

            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {

                }
                else {


                }
            }
        });
}

function total_anx() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/total_anx",
            contentType: 'application/json; charset=utf-8',
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status === 'ok') {
                    window.location.replace("AnxietyAssessmentResult.html")
                }
            }
        });
}


function total_dep() {
    $.ajax(
        {
            url: "http://127.0.0.1:5000/Quiz/total_dep",
            contentType: 'application/json; charset=utf-8',
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status === 'ok') {
                    window.location.replace("DepressionAssessmentResult.html")
                }
            }
        });
}
/*
function getinfo_parent(){

 $("#parent").show();

$.ajax({
    url: 'http://127.0.0.1:5000/newinfo_parent',
    type: "GET",
    dataType: "json",
    success: function(resp) {

if (resp.status  == 'ok') {
   for (i = 0; i < resp.count; i++)
                                  {
   first_name = resp.entries[i].first_name;
   last_name = resp.entries[i].last_name;
   birthdate = resp.entries[i].birthdate;
   age = resp.entries[i].age;
   relationship = resp.entries[i].relationship;
                                       $("#parent").append(parent(first_name,last_name, birthdate, age, relationship));

                                  }

} else
{
                                       $("#parent").html("");
alert(resp.message);
}
    }
});
}
*/




/*function answer() {


    $.ajax(
        {
            url: "http://127.0.0.1:5000/answer",
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                'one': $("#one").val(),
                'two': $("#two").val(),
                'three': $("#three").val(),
                'four': $("#four").val(),
                'five': $("#five").val(),
                'six': $("#six").val(),
                'seven': $("#seven").val(),
                'eight': $("#eight").val()
            }),
            type: "POST",
            dataType: "json",
            error: function (e) {
            },
            success: function (resp) {
                if (resp.status == 'ok') {
                    alert('depp');
                }
                else {


                }
            }
        });
}*/


/*function login() {
    var loCId = $('#username').val();
   data:$('form').serialize(),
  var locTitle = $('#password').val();
  $.ajax({
   url: 'http://127.0.0.1:5000/login/'+loCId+'/'+locTitle,
    type: "POST",
      success: function(resp) {
       if(resp.status==='ok'){
            window.location.replace('Antidote.html');
       }else if(resp.status==='error'){
            window.location.replace('Antidote(LogIn).html');
       }setRequestHeader("Authorization",
                        "Basic " + btoa("ako:akolagini"));
        }
  });
}/**
 * Created by Dustin Gerard on 5/14/2017.



      },
      error: function(resp) {
        window.location.replace('/texs/404.html');
      },
      beforeSend: function (xhrObj){
              xhrObj.*/

function redirect1() {
    window.location =  'AnxietyQuestion2.html';
    return false;
}

function redirect2() {
    window.location =  'AnxietyQuestion3.html';
    return false;
}

function redirect3() {
    window.location =  'AnxietyQuestion4.html';
    return false;
}

function redirect4() {
    window.location =  'AnxietyQuestion5.html';
    return false;
}

function redirect5() {
    window.location =  'AnxietyQuestion6.html';
    return false;
}

function redirect6() {
    window.location =  'AnxietyQuestion7.html';
    return false;
}

function redirect7() {
    window.location =  'AnxietyQuestion8.html';
    return false;
}

function redirect8() {
    window.location =  'DepressionQuestion2.html';
    return false;
}

function redirect9() {
    window.location =  'DepressionQuestion3.html';
    return false;
}

function redirect10() {
    window.location =  'DepressionQuestion4.html';
    return false;
}

function redirect11() {
    window.location =  'DepressionQuestion5.html';
    return false;
}

function redirect12() {
    window.location =  'DepressionQuestion6.html';
    return false;
}

function redirect13() {
    window.location =  'DepressionQuestion7.html';
    return false;
}

function redirect14() {
    window.location =  'DepressionQuestion8.html';
    return false;
}

function finishedanxietyassessment() {
    window.location =  'AnxietyFinishedAssessment.html';
    return false;
}

function finisheddepressionassessment() {
    window.location =  'DepressionFinishedAssessment.html';
    return false;
}

function viewanxietyresult() {
    window.location =  'AnxietyAssessmentResult.html';
    return false;
}

function viewdepressionresult() {
    window.location =  'DepressionAssessmentResult';
    return false;
}
