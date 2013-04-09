# == Schema Information
#
# Table name: timelogs
#
#  id          :integer          not null, primary key
#  type        :string(255)
#  altcatid    :integer
#  hourlog     :integer
#  description :string(255)
#  datelog_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class TimelogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
