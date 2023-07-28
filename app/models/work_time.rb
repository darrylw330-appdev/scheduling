class WorkTime < ApplicationRecord
  has_many :bookings
  belongs_to :work_day
  # Add any other associations or validations as needed
end
