class Vote < ApplicationRecord
  belongs_to :stock

  def buy
    return 1 if buy?
  end

  def sell
    return -1 if !buy?
  end

  def self.stock_value_per_minute
    find_by_sql(<<-SQL
      SELECT
        created_at,
        stock_value
      FROM votes
      ORDER BY created_at
      SQL
    ).map do |row|
      [
        (row['created_at'] + 2.hours).strftime("%H:%M"),
        row.stock_value,
      ]
    end
  end
end
