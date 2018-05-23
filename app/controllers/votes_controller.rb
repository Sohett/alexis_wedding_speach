class VotesController < ApplicationController

  def create
    prepare
    @vote = Vote.new(stock_id: 1)
    buy? ? @vote.buy = true : @vote.buy = false
    buy? ? buy_stock_value : sell_stock_value
    @vote.save
    save_new_stock_price
    redirect_to stock_path(id: 1)
  end


  private

  def prepare
    @stock = Stock.first
    @stock_price = @stock.price
    data_params
  end

  def buy_stock_value
    @vote.stock_value = (@stock_price + 25.42)
  end

  def sell_stock_value
    @vote.stock_value = (@stock_price - 17.8)
  end

  def save_new_stock_price
    @stock.update(price: @vote.stock_value)
  end

  def buy?
    @data.eql?('buy') ? true : false
  end

  def data_params
    @data ||= params[:order]
  end

end
