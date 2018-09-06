class CreateAnswerChoice < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_choices do |t|
      t.text :body, null: false 
      t.integer :question_id, null: false
    end
  end
end
