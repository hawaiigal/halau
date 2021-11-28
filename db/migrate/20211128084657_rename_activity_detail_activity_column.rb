class RenameActivityDetailActivityColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :activity_details, :activity, :name
  end
end
