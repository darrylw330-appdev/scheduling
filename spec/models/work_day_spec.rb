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
require 'rails_helper'

RSpec.describe WorkDay, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
