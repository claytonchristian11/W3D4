class CreateResponse < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.text :body, null:false
      t.integer :answer_choice_id, null:false
      t.integer :user_id, null: false
    end
  end
end
