class Timelog < ActiveRecord::Base
  belongs_to :datelog
  attr_accessible :altcatid, :description, :hourlog, :type
end
