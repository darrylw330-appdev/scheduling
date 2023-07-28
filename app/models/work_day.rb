class WorkDay < ApplicationRecord
  has_many :bookings
  has_many :work_times
  belongs_to :user
  # Add any other associations or validations as needed
end
