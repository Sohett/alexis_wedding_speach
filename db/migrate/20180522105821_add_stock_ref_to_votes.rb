class AddStockRefToVotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :votes, :stock, foreign_key: true
  end
end
