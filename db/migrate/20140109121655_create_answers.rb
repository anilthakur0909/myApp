class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.integer :correct_answer
      t.integer :objective_question_id

      t.timestamps
    end
  end
end
