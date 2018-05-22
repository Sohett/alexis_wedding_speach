class StocksController < ApplicationController

  def show
    stock = Stock.first
    @market_value = stock.market_value
    @sells = Vote.where(buy: false)
    @buys = Vote.where(buy: true)
  end
end
