class CreateObjectiveQuestions < ActiveRecord::Migration
  def change
    create_table :objective_questions do |t|
      t.string :objective_question
      t.integer :user_class
      t.integer :chapter_or_topic

      t.timestamps
    end
  end
end
