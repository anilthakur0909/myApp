require "testlogic"
require "csv"
require "subjective_csv_logic"
class GenratetestController < ApplicationController

  def new
    @questionbank=QuestionBank.new
  end
  
  def testgenerate
    puts "in testgenerate"
    testlogic = TestLogic.new
    p=testgenerate_parameter
    @my_question_array = testlogic.logic(p)
    puts "after logic"
  end
  
  def export_csv_test 
    generateCSV=GenerateSubjectiveCsvFile.new
    file  = generateCSV.csv_convert(export_csv_params)
     send_file  file  
  end
  
  def show
    
  end
  def testgenerate_parameter
    params.require(:question_bank).permit(:class_value, :chapter, :marks)
  end
  
  def export_csv_params
    params.require(:ids)
  end
  
end
