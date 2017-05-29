function login(){
console.log($("#usr").val());
console.log($("#pwd").val());
$.ajax(
      {
        url: 'http://127.0.0.1:5000/login',
        contentType: 'application/json; charset=utf-8',
        data: JSON.stringify({
          username: $("#usr").val(),
          password: $("#pwd").val()
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

