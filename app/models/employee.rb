class Employee < ActiveRecord::Base
  attr_accessible :admin, :altid, :code, :creation, :division_id, :name, :title, :tottime


  validates :admin, :presence => true
  validates :altid, :presence => true,
                    :length => { :maximum => 5 } 
  validates :code, :presence => true,
                   :length => { :minimum => 6 }
  validates :creation, :presence => true
  validates :name, :presence => true
  validates :title, :presence => true

  has_many :datelogs, :dependent => :destroy
  has_many :timelogs, :through => :datelogs

  accepts_nested_attributes_for :datelogs, :allow_destroy => true
end