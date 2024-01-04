class Car < ApplicationRecord
  has_many :bids, dependent: :destroy
  after_create :create_default_bid


  def create_default_bid
    Bid.create(car: self, amount: 2000, closing_time: Date.today + 10, closed: false)
  end
end
