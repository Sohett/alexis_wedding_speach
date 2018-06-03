require 'csv'
class StockPriceGraph

  def initialize
    @votes = Vote.all
  end

  def call
    export_to_csv
  end


  private

  attr_reader :votes

  def export_to_csv
    CSV.open("stock_prices.csv", "w", {:col_sep => ";", encoding: 'iso-8859-1:UTF-8'}) do |csv|
      csv << [
        'created_at',
        'Achat',
        'Prix'
      ]

      votes.each do |vote|

        csv << [
          vote.created_at,
          vote.buy,
          vote.stock_value
        ]
      end
    end
  end
end
