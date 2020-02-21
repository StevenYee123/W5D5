class UpdateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    rename_column(:answer_choices, :user_id, :response_id)
  end
end
