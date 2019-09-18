class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.integer :user_id
      t.string :name
      t.integer :equity_id

      t.timestamps
    end
  end
end
