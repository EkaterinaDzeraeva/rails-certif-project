class Event < ApplicationRecord
  belongs_to :restaurant
  belongs_to :event
  validates :name, presence: true
  validates :address, presence: true
  validates :description, length: { minimum: 6 }, presence: true
end
