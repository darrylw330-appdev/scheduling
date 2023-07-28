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
require 'rails_helper'

RSpec.describe WorkTime, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
