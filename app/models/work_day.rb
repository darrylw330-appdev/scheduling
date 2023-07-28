# == Schema Information
#
# Table name: work_days
#
#  id         :bigint           not null, primary key
#  day_name   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_work_days_on_day_name  (day_name) UNIQUE
#
class WorkDay < ApplicationRecord
  has_many :bookings
  has_many :work_times
  belongs_to :user
  # Add any other associations or validations as needed
end
