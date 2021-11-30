class DeleteNameFromHourEntries < ActiveRecord::Migration[6.1]
  def up
    change_table :hour_entries do |t|
      t.remove :name
    end
  end

  def down
    change_table :hour_entries do |t|
      t.string :name
    end
  end
end
