class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] && params[:question].include?("?")
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question] && params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question]
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
