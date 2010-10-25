require 'spec_helper'

describe ForumController do
  
  describe "route should routing " do
    it "index" do
      {:get => "/"}.should route_to(:controller => "forum", :action => "index")
    end
    
    it "new" do
      {:get => "/nova-discussao"}.should route_to(:controller => "forum", :action => "new")
    end
    
    it "show" do
      {:get => "/this-is-my-question"}.should route_to(:controller => "forum", :action => "show", :id => "this-is-my-question")
    end
    
    it "create" do
      {:post => "/"}.should route_to(:controller => "forum", :action => "create")
    end
    
    it "update" do
      {:put => "/this-is-my-question"}.should route_to(:controller => "forum", :action => "update", :id => "this-is-my-question")
    end
  end
  
  describe "named routes" do
    it "should be questions path" do
      questions_path.should == "/"
    end

    it "should be question path" do
      question_path(45).should == "/45"
    end

    it "should be new question path" do
      new_question_path.should == "/nova-discussao"
    end
    
  end

end
