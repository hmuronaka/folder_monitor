class Folder < ActiveRecord::Base
  belongs_to :drive
  attr_accessible :name, :path, :drive, :drive_id
  has_many :usages
end
