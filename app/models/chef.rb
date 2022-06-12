class Chef < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :restaurants, through: :events
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :stars, numericality: { in: 0..5}
end
