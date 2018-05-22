class VotesController < ApplicationController

  def create
    data_params
    @vote = Vote.new(stock_id: 1)
    buy? ? vote.buy = true : vote.buy = false
    vote.save
    redirect_to stock_path(id: 1)
  end


  private

  attr_reader :data, :vote

  def buy?
    data.eql?('buy') ? true : false
  end

  def data_params
    @data ||= params[:order]
  end

end
