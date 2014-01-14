require "objective_test_logic"
require "generate_result"
require "csv"
class GenerateobjectivetestController < ApplicationController
  def new
    @objective=ObjectiveQuestion.new
  end
  
  def result
    puts "inside controller"
    generateresult= GenerateResult.new
    @result=generateresult.generate_result(result_params)
    puts "again in controller"
  end
  
  def generate_objective_test
    
    objectivetestlogic=ObjectiveTestLogic.new
    @my_objective_question_array=objectivetestlogic.objective_test_logic(objective_question_params)
    
    
  end
  private
  def objective_question_params
    params.permit({objective_question: [:user_class, :chapter_or_topic]}, :pattern)
  end
  
  def result_params
    params.require(:option).permit!
  end
end
