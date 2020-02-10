class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question, null: false
      t.string :wrong_answer1, null: false
      t.string :wrong_answer2, null: false
      t.string :wrong_answer3, null: false
      t.string :right_answer, null: false
      t.string :difficulty, null: false
      t.integer :catergoryid, default: 0
      t.timestamps
    end
  end
end
