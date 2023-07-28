# == Schema Information
#
# Table name: bookings
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint
#  work_day_id  :bigint
#  work_time_id :bigint
#
# Indexes
#
#  index_bookings_on_user_id       (user_id)
#  index_bookings_on_work_day_id   (work_day_id)
#  index_bookings_on_work_time_id  (work_time_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#  fk_rails_...  (work_day_id => work_days.id)
#  fk_rails_...  (work_time_id => work_times.id)
#
require 'rails_helper'

RSpec.describe Booking, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
