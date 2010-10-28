$(document).ready(function(){
  $("#new_question").validate({
    debug: true,
    rules: {
         "question[name]": "required",
         "question[title]": "required"
        },
     messages: {
      "question[name]": "Nome nao pode estar em branco",
      "question[title]": "titulo nao pode estar em branco",
    }
     });
  });
