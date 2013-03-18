class Datelog < ActiveRecord::Base
  belongs_to :employee
  has_many :timelogs, :dependent=>:destroy
  attr_accessible :altnumeric, :daylog, :tottime
  validates :daylog, :presence => true
  
  accepts_nested_attributes_for :timelogs, :allow_destroy => true
end
