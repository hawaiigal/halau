# frozen_string_literal: true

class ActivityDetail < ApplicationRecord
  validates :activity, presence: true
  validates :hours, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
