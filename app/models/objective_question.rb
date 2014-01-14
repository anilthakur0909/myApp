class ObjectiveQuestion < ActiveRecord::Base
  validate :objective_question, presence: true
  validate :option1, presence: true
  validate :option2, presence: true
  validate :option3, presence: true
  validate :option4, presence: true
  
end
