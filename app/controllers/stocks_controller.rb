class StocksController < ApplicationController

  def index
    @votes = Vote.all
    @market_value = Stock.first.price.round(2)
    @stocks_value_per_minute = Vote.stock_value_per_minute
  end

  def show
    @market_value = Stock.first.price.round(2)
  end
end
