class ForumController < ApplicationController
  def index
    @questions = Question.all
  end
  
  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
  end

  def update
  end

end
