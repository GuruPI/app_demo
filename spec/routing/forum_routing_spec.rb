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

    it "new reply" do
      {:get => "/this-is-my-question/resposta"}.should route_to(:controller => "forum", :action => "reply", :id => "this-is-my-question")
    end
  end

  describe "named routes" do
    it "should be questions path" do
      questions_path.should == "/"
    end

    it "should be question path" do
      question_path(42).should == "/42"
    end

    it "should be new question path" do
      new_question_path.should == "/nova-discussao"
    end

    it "should be new reply path" do
      reply_path(42).should == "/42/resposta"
    end
  end
end
