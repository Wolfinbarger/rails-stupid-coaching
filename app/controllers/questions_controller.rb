class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].present? && params[:question] == 'I am going to work'
      @question = params[:question]
      @answer = 'Great!'
    elsif params[:question].present? && params[:question].last == '?'
      @question = params[:question]
      @answer = 'Silly question, get dressed and go to work!'
    else
      @question = params[:question]
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
