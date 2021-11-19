class UseHaumanaInHourEntry < ActiveRecord::Migration[6.1]
  def up
    HourEntry.select(:name).group(:name).each do |hour_entry|
      unless Haumana.exists?(name: hour_entry.name)
        Haumana.new(name: hour_entry.name, seconds_balance: 0).save
      end
    end

    change_table :hour_entries do |t|
      t.belongs_to :haumana, foreign_key: true
    end
  end

  def down
    change_table :hour_entries do |t|
      t.remove :haumana_id
    end
  end
end
