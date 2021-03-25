class Ship < ApplicationRecord
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  has_many :users, :through => :bookings

  include PgSearch::Model
  pg_search_scope :search_by_location, against: :location
end
