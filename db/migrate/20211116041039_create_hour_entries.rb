class CreateHourEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :hour_entries do |t|
      t.string :name
      t.datetime :date

      t.timestamps
    end
  end
end
