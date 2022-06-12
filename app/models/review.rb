class Review < ApplicationRecord
  belongs_to :restaurant
  validates :comment, presence: true
  validates :rating, numericality: { in: 0..5 }
end
