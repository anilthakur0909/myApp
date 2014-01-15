class TestLogic 
  def logic(p)
    puts "in logic"
    puts p.inspect
    pattern = p[:marks]
    class_value=p[:class_value]
    chapter=p[:chapter]
    puts pattern
    questions_array = []
    if pattern=="15"
          puts "Generating test of 15 marks"
          one_marks_question=2
          two_marks_question=3
          three_marks_question=3
          five_marks_question=0
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 1, class_value: class_value, chapter: chapter).limit(one_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 2, class_value: class_value, chapter: chapter).limit(two_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 3, class_value: class_value, chapter: chapter).limit(three_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 5, class_value: class_value, chapter: chapter).limit(five_marks_question).order('rand()')
          
      elsif pattern=="25"
          puts "Generating test of 25 marks"
          one_marks_question=2
          two_marks_question=3
          three_marks_question=4
          five_marks_question=1
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 1, class_value: class_value, chapter: chapter).limit(one_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 2, class_value: class_value, chapter: chapter).limit(two_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 3, class_value: class_value, chapter: chapter).limit(three_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 5, class_value: class_value, chapter: chapter).limit(five_marks_question).order('rand()')
          
          
          
      elsif pattern=="35"
          puts "Generating test of 35 marks"
          one_marks_question=5
          two_marks_question=5
          three_marks_question=5
          five_marks_question=1
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 1, class_value: class_value, chapter: chapter).limit(one_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 2, class_value: class_value, chapter: chapter).limit(two_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 3, class_value: class_value, chapter: chapter).limit(three_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 5, class_value: class_value, chapter: chapter).limit(five_marks_question).order('rand()')
         
          
          
      elsif pattern=="70"
          puts "Generating test of 70 marks"
          one_marks_question=8
          two_marks_question=10
          three_marks_question=9
          five_marks_question=3
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 1, class_value: class_value, chapter: chapter).limit(one_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 2, class_value: class_value, chapter: chapter).limit(two_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 3, class_value: class_value, chapter: chapter).limit(three_marks_question).order('rand()')
          questions_array.concat QuestionBank.select(:id,:questions,:marks).where(marks: 5, class_value: class_value, chapter: chapter).limit(five_marks_question).order('rand()')
    end
    
    questions_array.each do |a|
      puts a
    end
    
    return questions_array
    
  end
end