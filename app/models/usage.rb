class Usage < ActiveRecord::Base
  belongs_to :folder
  attr_accessible :file_count, :file_size, :folder, :folder_id
end
