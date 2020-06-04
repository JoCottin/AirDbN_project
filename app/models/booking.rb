class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  geocoded_by :place
  after_validation :geocode
end
