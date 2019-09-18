class CreatePredictions < ActiveRecord::Migration[5.2]
  def change
    create_table :predictions do |t|
      t.integer :user_id
      t.integer :equity_id
      t.integer :price
      t.date :date

      t.timestamps
    end
  end
end
