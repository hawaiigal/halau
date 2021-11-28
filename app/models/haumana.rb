class Haumana < ApplicationRecord
  validates :name, presence: true
  validates :seconds_balance, presence: true

  def hours_balance
    remaining = seconds_balance / 60

    return '0 hours' if remaining.zero?

    [[60, :minutes], [24, :hours]].map do |count, name|
      next unless remaining.positive?

      remaining, n = remaining.divmod(count)

      "#{n.to_i} #{name}" unless n.to_i.zero?
    end.compact.reverse.join(' ')
  end
end
