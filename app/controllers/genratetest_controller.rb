require "testlogic"
require "csv"
class GenratetestController < ApplicationController
  # def index
    # @questionbank=QuestionBank.all
#     
  # end
  @@data_csv=[]
  def new
    @questionbank=QuestionBank.new
  end
  def testgenerate
    puts "in testgenerate"
    testlogic = TestLogic.new
    p=testgenerate_parameter
    puts p
    @my_question_array = testlogic.logic(p)
    @@data_csv=@my_question_array
    puts "after logic"
  end
  def export_csv_test 
    @test_array=@@data_csv
    header="s.no,Question,marks"
    i=1
    file = "my_test.csv"
    File.open(file, "w") do |csv|
      csv<<header
      csv << "\n"
      @test_array.each do |data|
        csv<<"\"#{i}\", \"#{data.questions}\", \"#{data.marks}\""
        csv << "\n"
        i+=1
      end
    end
    send_file(file)
  end
  
  def show
    
  end
  def testgenerate_parameter
    params.require(:question_bank).permit(:class_value, :chapter, :marks)
  end
end
