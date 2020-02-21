# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  user_id          :integer
#  answer_choice_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Response < ApplicationRecord

  belongs_to :user, 
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

  belongs_to :answer_choice,
  primary_key: :id,
  foreign_key: :answer_choice_id,
  class_name: :AnswerChoice 

  has_one :question,
  through: :answer_choice,
  source: :question 

  def sibling_responses
    self.question.responses.where.not("responses.id = ?", self.id)
  end

  def response_already_answered?
    resp = self.sibling_responses
    return true unless resp.first.id.nil?
    false
  end
end
