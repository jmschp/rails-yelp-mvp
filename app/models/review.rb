RATES = [0, 1, 2, 3, 4, 5]
class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, inclusion: { in: RATES }, numericality: { only_integer: true }
  validates :content, presence: true, length: { minimum: 5, maximum: 2000 }
end
