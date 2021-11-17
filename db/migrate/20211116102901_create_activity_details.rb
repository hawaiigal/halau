class CreateActivityDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_details do |t|
      t.string :activity
      t.integer :hours

      t.timestamps
    end
  end
end
