# == Schema Information
#
# Table name: datelogs
#
#  id          :integer          not null, primary key
#  daylog      :date
#  tottime     :integer
#  altnumeric  :integer
#  employee_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class DatelogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
