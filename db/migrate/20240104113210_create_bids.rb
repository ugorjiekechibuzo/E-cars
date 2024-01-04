class CreateBids < ActiveRecord::Migration[7.1]
  def change
    create_table :bids do |t|
      t.references :car, null: false, foreign_key: true
      t.float :amount
      t.datetime :closing_time
      t.boolean :closed

      t.timestamps
    end
  end
end
