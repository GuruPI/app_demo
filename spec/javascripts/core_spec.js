require("spec_helper.js");
require("../../public/javascripts/core.js");

Screw.Unit(function(){
  describe("Core", function(){
    it("does something", function(){
      expect("hello").to(equal, "hello");
    });
  });
});
