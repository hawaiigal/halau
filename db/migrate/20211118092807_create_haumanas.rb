class CreateHaumanas < ActiveRecord::Migration[6.1]
  def change
    create_table :haumanas do |t|
      t.string :name
      t.integer :seconds_balance
      t.timestamps
    end
  end
end
