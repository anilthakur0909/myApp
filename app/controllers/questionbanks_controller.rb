class QuestionbanksController < ApplicationController
  
  def new
    @questionbank=QuestionBank.new
  end
  
  def create
    QuestionBank.create(questionbank_pararmeters)
    redirect_to action: "new"
  end
  
  private
  def questionbank_pararmeters
    params.require(:question_bank).permit(:questions,:marks,:class_value,:chapter)
  end
  
end
