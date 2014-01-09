class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :option1
      t.integer :option2
      t.integer :option3
      t.integer :option4
      t.integer :objective_question_id

      t.timestamps
    end
  end
end
