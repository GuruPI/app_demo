require 'spec_helper'

describe "forum/new.html.erb" do
  before(:each) do
    @question = Question.new
    render
  end

  it "should have form" do
    rendered.should have_selector("form", :action => "/") do |f|
      f.should have_selector("input", :name => "question[name]", :id => "question_name")
      f.should have_selector("input", :name => "question[email]", :id => "question_email")
      f.should have_selector("input", :name => "question[title]", :id => "question_title")
      f.should have_selector("textarea", :name => "question[text]", :id => "question_text")
      f.should have_selector("input", :type => "submit", :value => "Cadastrar")
    end
  end
end
