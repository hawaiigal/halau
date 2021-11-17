# frozen_string_literal: true

class HourEntry < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true

  enum type_of_entry: %i[hours_worked hours_used]
end
