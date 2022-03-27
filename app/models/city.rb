class City < ApplicationRecord
  validates :name, presence: true
  validates :longtitude, presence: true
  validates :latitude, presence: true
end
