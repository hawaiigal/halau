class Haumana < ApplicationRecord
  validates :name, presence: true
  validates :seconds_balance, presence: true

  def update_balance(hours, minutes, factor)
    time_diff = (hours * 60 * 60 + minutes * 60) * factor

    update(seconds_balance: seconds_balance + time_diff)
  end

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
