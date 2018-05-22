class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.boolean :buy
      t.integer :amount

      t.timestamps
    end
  end
end
