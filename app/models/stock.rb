class Stock < ApplicationRecord
  has_many :votes

  def market_value
    market_value = 100
    votes = self.votes
    votes.each do |vote|
      vote.buy? ? market_value += 100 : market_value -= 100
     end
     market_value/(votes.count)
  end

end
