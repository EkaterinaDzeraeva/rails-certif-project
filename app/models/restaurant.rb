class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :chefs, through: :events
  has_many :events, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :rating, numericality: { in: 0..5 }
end
