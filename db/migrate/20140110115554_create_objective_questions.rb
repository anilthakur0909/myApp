class CreateObjectiveQuestions < ActiveRecord::Migration
  def change
    create_table :objective_questions do |t|
      t.string :objective_question
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.integer :correct_option
      t.integer :user_class
      t.integer :chapter_or_topic

      t.timestamps
    end
  end
end
