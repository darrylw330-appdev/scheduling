class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :work_day
  belongs_to :work_time
  # Add any other associations or validations as needed
end
