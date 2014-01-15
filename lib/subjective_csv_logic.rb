require 'csv'
class GenerateSubjectiveCsvFile
  def csv_convert(export_csv_params)
    question_ids=export_csv_params.split(' ')
    puts "in subjective logic with ids #{question_ids}"
    @data=[]
    question_ids.each do |id|
      @data<<QuestionBank.select(:id, :questions, :marks).where(id: id).first
    end
    puts @data
    header="s.no,Question,marks"
    i=1
    file = "my_test #{Time.now}.csv"
    File.open(file, "w") do |csv|
      csv<<header
      csv << "\n"
      @data.each do |d|
        csv<<"\"#{i}\", \"#{d.questions}\", \"#{d.marks}\""
        csv << "\n"
        i+=1
      end
    end
     return file

  end
  
end