# == Schema Information
#
# Table name: work_times
#
#  id         :bigint           not null, primary key
#  end_time   :datetime
#  start_time :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class WorkTime < ApplicationRecord
  has_many :bookings
  belongs_to :work_day
  # Add any other associations or validations as needed
end
