class CreateAnswerChoice < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.text :text, null: false
      t.integer :question_id, null: true
      t.integer :user_id, null: true

      t.timestamps
    end

    add_index(:answer_choices, :question_id)
    add_index(:answer_choices, :user_id)
  end
end
