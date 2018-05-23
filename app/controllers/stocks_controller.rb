class StocksController < ApplicationController

  def show
    @votes = Vote.all
    @market_value = Stock.first.price.round(2)
  end
end
