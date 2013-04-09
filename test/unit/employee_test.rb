# == Schema Information
#
# Table name: employees
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  title       :string(255)
#  code        :string(255)
#  tottime     :integer
#  altid       :integer
#  division_id :integer
#  creation    :datetime
#  admin       :binary
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
