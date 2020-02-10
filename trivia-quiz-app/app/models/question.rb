class Question < ApplicationRecord
   
    validates :question, presence:true
    validates :question, uniqueness:true
    validates :wrong_answer1, presence:true
    validates :wrong_answer2, presence:true
    validates :wrong_answer3, presence:true
    validates :wrong_answer3, presence:true
    validates :right_answer, presence:true
end
