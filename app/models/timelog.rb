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

class Timelog < ActiveRecord::Base
  belongs_to :datelog
  attr_accessible :altcatid, :description, :hourlog, :type

  self.inheritance_column = :_type_disabled
end
