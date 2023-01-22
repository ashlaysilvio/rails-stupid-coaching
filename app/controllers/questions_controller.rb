class QuestionsController < ApplicationController
  def ask
    if params[:answer]
  end

    def answer
      @question = params[:question]
      if @question.blank?
        @answer ="Please type a question"
      elsif @question == "I am going to work"
            @answer ="Great!"
      elsif @question.ends_with? (?)
            @answer ="Silly question,get dressed and go to work!"
      else
            @answer="I don't care,get dressed and go to work!"
      end
    end
  end
end
