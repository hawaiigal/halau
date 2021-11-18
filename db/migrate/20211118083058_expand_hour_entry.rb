class ExpandHourEntry < ActiveRecord::Migration[6.1]
  def change
    change_table :hour_entries do |t|
      t.integer :type_of_entry
      t.belongs_to :activity_detail
      t.integer :hours
      t.integer :minutes
      t.text :notes
    end
  end
end
