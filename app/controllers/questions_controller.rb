class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.nil?
      @answer = 'i cant hear you'
      elsif @question == 'i am going to work'
      @answer = "Great!"
      elsif @question.ends_with?("?")
      @answer = 'silly question get dressed and go to work!'
      else @answer = 'i dont care get dressed and got to work!'
    end

  end
end
