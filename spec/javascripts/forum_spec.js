require("spec_helper.js");
require("../../public/javascripts/jquery.validate.js");
require("../../public/javascripts/forum.js");

 $(document).ready(function(){
Screw.Unit(function(){

   before(function() {
      $('#new_question').validate().form();
  });

  describe("question/new to fail if missing name", function() {
       it("should display an error when submitting form white", function() {
          expect($('#new_question').validate().form()).to(equal,false);
        });

       it("should display an error when submitting form without name", function() {
           expect($("label[for=question_name][class=error]").html()).to(equal,'Nome nao pode estar em branco');
         });

    });
});
});
