class Timelog < ActiveRecord::Base
  belongs_to :datelog
  attr_accessible :altcatid, :description, :hourlog, :type

  self.inheritance_column = :_type_disabled
end
