class AddobjectivequestionsController < ApplicationController
  def new
    @objectivequestion = ObjectiveQuestion.new
  end
  def create
    question = ObjectiveQuestion.create(objective_question_parameters)
    redirect_to action: "new"
  end
  private
  def objective_question_parameters
    params.require(:objective_question).permit(:objective_question, :user_class, :chapter_or_topic,:option1, :option2, :option3, :option4, :correct_option)
  end
end
