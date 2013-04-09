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

class Datelog < ActiveRecord::Base
  belongs_to :employee
  has_many :timelogs, :dependent=>:destroy
  attr_accessible :altnumeric, :daylog, :tottime
  validates :daylog, :presence => true
  
  accepts_nested_attributes_for :timelogs, :allow_destroy => true
end
