class AddobjectivequestionsController < ApplicationController
  def new
    @objectivequestion = ObjectiveQuestion.new
    @answer=Answer.new
  end
  def create
    
  end
end
