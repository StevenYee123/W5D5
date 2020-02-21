class DeleteResponseId < ActiveRecord::Migration[5.2]
  def change
    remove_column(:answer_choices, :response_id)
  end
end
