class ObjectiveTestLogic
  def objective_test_logic(question_params)
    pattern=question_params["pattern"]
    user_class=question_params["objective_question"]["user_class"]
    chapter_or_topic=question_params["objective_question"]["chapter_or_topic"]
    
    objective_questions_array=[]
        if pattern=="20"
          puts "Generating test of 20 Questions"
          objective_questions_array.concat ObjectiveQuestion.select(:id, :objective_question, :option1, :option2, :option3, :option4, :correct_option).where(user_class: user_class, chapter_or_topic: chapter_or_topic).limit(pattern).order('rand()')
               
      elsif pattern=="30"
          puts "Generating test of 30 Questions"
          objective_questions_array.concat ObjectiveQuestion.select(:id, :objective_question, :option1, :option2, :option3, :option4, :correct_option).where(user_class: user_class, chapter_or_topic: chapter_or_topic).limit(pattern).order('rand()')
          
      elsif pattern=="45"
          puts "Generating test of 45 Questions"
          objective_questions_array.concat ObjectiveQuestion.select(:id, :objective_question, :option1, :option2, :option3, :option4, :correct_option).where(user_class: user_class, chapter_or_topic: chapter_or_topic).limit(pattern).order('rand()')
      elsif pattern=="60"
          puts "Generating test of 60 Questions"
          objective_questions_array.concat ObjectiveQuestion.select(:id, :objective_question, :option1, :option2, :option3, :option4, :correct_option).where(user_class: user_class, chapter_or_topic: chapter_or_topic).limit(pattern).order('rand()')
          
    end
    
     objective_questions_array.each do |a|
     puts a
     end
     
    return objective_questions_array
    
  end
end