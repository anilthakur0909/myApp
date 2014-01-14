class QuestionBank < ActiveRecord::Base
  validate :questions, presence: true
end
