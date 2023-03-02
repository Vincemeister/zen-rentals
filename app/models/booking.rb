class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :rental
  enum status: [:pending, :accepted, :rejected]
end
