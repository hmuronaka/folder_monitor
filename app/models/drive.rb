class Drive < ActiveRecord::Base
  attr_accessible :current_size, :name, :total_size
  has_many :folders
end
