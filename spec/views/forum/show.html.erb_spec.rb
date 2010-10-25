require 'spec_helper'

describe "forum/show.html.erb" do
  before(:each) do
    @question = Question.make!
    render
  end

  it "should have Question Title" do
    rendered.should have_selector("h1", :content => @question.title)
  end

  it "should have Question Text" do
    rendered.should have_selector("div", :id => "question_text", :content => @question.text)
  end

  it "should have link to Reply Form" do
    rendered.should have_selector("a", :content => "Responder")
  end
end
