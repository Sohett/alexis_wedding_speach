class Stock < ApplicationRecord
  has_many :votes

  def market_value
    market_value = 0
    votes = self.votes
    votes.each do |vote|
      vote.buy? ? market_value += 1 : market_value -= 1
     end
    return market_value*100/votes.count
  end

end
