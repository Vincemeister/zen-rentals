class Rental < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description_and_address,
  against: [ :title, :description, :address ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
