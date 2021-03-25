class Ship < ApplicationRecord
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  has_many :users, :through => :bookings

  validates :category, inclusion: { in: %w(Bateau Radeau Yacht Militaire Sous-marin Porte-Container Oil-tanker Cruise Small-boat Autres) }


  include PgSearch::Model
  pg_search_scope :search_by_location, against: :location
  pg_search_scope :search_by_category, against: :category
end
