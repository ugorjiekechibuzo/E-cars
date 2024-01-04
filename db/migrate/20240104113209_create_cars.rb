class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.datetime :closing_time

      t.timestamps
    end
  end
end
