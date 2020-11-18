CATEGORIES = %w[chinese italian japanese french belgian]
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  validates :address, presence: true, length: { minimum: 5, maximum: 255 }
  validates :phone_number, length: { minimum: 5, maximum: 50 }
  validates :category, inclusion: { in: CATEGORIES, message: 'Only categories' }
end
