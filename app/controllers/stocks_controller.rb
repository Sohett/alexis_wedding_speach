class StocksController < ApplicationController

  def show
    stock = Stock.first
    @market_value = stock.market_value
  end
end
