class Bid < ApplicationRecord
  belongs_to :car

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :amount_greater_than_default_bid
  validates :closing_time_in_future

  private

  def amount_greater_than_default_bid
    if amount.present? && amount <= car.default_bid
      errors.add(:amount, "must be greater than the default bid")
    end
  end

  def closing_time_in_future
    if closing_time.present? && closing_time <= Time.now
      errors.add(:closing_time, "must be in the future")
    end
  end
end
