# encoding: utf-8
require 'spec_helper'

describe "forum/index.html.erb" do
  
  before(:each) do
    @questions = [Question.make!, Question.make!, Question.make!]
    render
  end
  
  it "should have link to new question" do
    rendered.should have_selector("a", :content => "Nova discussão")
  end

  it "should have Questions List" do
    rendered.should have_selector("ul") do |list|
      list.should have_selector("li", :count => 3) do |link|
        3.times do |i|
          link.should have_selector("a", :content => @questions[i].title)
          link.should have_selector("a", :href => question_path(@questions[i]))
        end
      end
    end
  end
  
end
