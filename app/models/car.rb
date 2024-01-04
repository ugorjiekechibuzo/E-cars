class Car < ApplicationRecord
  has_many :bids, dependent: :destroy
end
