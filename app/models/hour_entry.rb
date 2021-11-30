# frozen_string_literal: true

class HourEntry < ApplicationRecord
  validates :date, presence: true
  validates :hours, presence: true
  validates :minutes, presence: true

  enum type_of_entry: %i[hours_worked hours_used]
  belongs_to :activity_detail
  belongs_to :haumana

  before_destroy :update_haumana
  after_save :update_haumana

  private

  def update_haumana
    factor = hours_worked? ? 1 : -1

    print "haumana id #{haumana.seconds_balance} \n"

    haumana.update_balance(hours, minutes, factor)
    haumana.save
  end
end
