class CreateQuestionBanks < ActiveRecord::Migration
  def change
    create_table :question_banks do |t|
      t.string :questions
      t.integer :marks
      t.integer :class
      t.integer :chapter
      t.timestamps
    end
  end
end
