class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :rental
  # enum status: ["Pending", "Accepted", "Declined"]
end
