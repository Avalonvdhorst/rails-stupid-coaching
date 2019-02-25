class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # if the question is a statement (no question mark, answer = I don't care, get dressed and go to work!
    # if the question is a question with a question mark, answer = Silly question, get dressed and go to work!
    # if the question is I am going to work, the answer = Great!
  end
end
