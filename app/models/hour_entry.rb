# frozen_string_literal: true

class HourEntry < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true

  enum type_of_entry: [:hours_worked, hours_used]
  enum activity: %i[halau_fees community_service uliuli_workshop keiki_hula]
end
