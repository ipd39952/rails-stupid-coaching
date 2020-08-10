class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ""
    @question = params[:user_message]
    case params[:user_message]
    when "I am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end

    params[:user_message].end_with?("?") ? @answer = "Silly question, get dressed and go to work!" : nil
  end
end
