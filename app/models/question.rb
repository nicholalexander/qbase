class Question < ActiveRecord::Base

  has_many :answers

  def count_votes
    total = 0

    self.answers.each do |answer|
      total += answer.votes
    end
    
    return total
  end

end
