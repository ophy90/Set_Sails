class Ship < ApplicationRecord
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  has_many :users, :through => :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
