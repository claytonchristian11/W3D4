# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  body             :text             not null
#  answer_choice_id :integer          not null
#  user_id          :integer          not null
#

class Response < ApplicationRecord
  validates :body, :answer_choice_id, :user_id, presence:true 
  
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id, 
    class_name: :User
    
  belongs_to :answer_choice,
    primary_key: :id, 
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice 
end 
