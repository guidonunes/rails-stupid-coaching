class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:answer].capitalize
    if @input == 'I am going to work right now!'
      @result = 'Great!'
    elsif @input.end_with?('?')
      @result = 'Silly question, get dressed and go to work!'
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end
