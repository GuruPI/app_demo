class ForumController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
  end

  def create
  end

  def update
  end

end
