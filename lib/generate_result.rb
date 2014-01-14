class GenerateResult
  def generate_result(result_param)
    option=result_param
    last_result={correct_answer:0, wrong_answer:0}
    ids=option.keys
    ans=option.values
    option.each do |id|
        if option[id] == ObjectiveQuestion.select(:correct_option).where(id: id).first.correct_option
          last_result[:correct_answer]=last_result[:correct_answer]+1
        else
          last_result[:wrong_answer]=last_result[:wrong_answer]+1
        end
    end
    puts last_result
    return last_result
    
  end
end
