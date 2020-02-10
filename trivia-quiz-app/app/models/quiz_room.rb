class QuizRoom < ApplicationRecord
    after_initialize :init
    validates :name, presence:true
    validates :name, uniqueness:true
    validates :description, presence:true
    validates :timeout, presence:true
    validates :playerno, presence:true

    def init
      self.difficulty  ||= ''         
      self.categoryid ||= 0 
      self.active ||= 0
      self.complete ||= 0
      self.winner ||= ''
      self.username ||= ''
    end
end
