class Vote < ApplicationRecord
  belongs_to :stock

  def buy
    return 1 if buy?
  end

  def sell
    return -1 if !buy?
  end
end
