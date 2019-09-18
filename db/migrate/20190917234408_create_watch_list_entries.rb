class CreateWatchListEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :watch_list_entries do |t|
      t.integer :watchlist_id
      t.integer :equity_id

      t.timestamps
    end
  end
end
