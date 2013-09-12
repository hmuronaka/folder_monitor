class InputFormController < ApplicationController
  def input
  end

  def upload
    @file = params[:page][:attachment]

    yaml = YAML.load(@file.read)
    yaml.each do |usage|
      drive_name = $1 if usage['path'] =~ /^(.*):/
      drive = Drive.find_by_name(drive_name)
      unless drive
        drive = Drive.create do |d|
          d.name= drive_name
        end
      end

      folder = Folder.find_by_name(usage['name'].chomp)
      unless folder
        folder = Folder.create do |f| 
          f.name = usage['name'].chomp
          f.path = usage['path'].chomp
          f.drive = drive
        end
      end

      Usage.create do |u|
        u.folder = folder
        u.file_size = usage['file_size']
        u.file_count = usage['file_count']
      end
    end
    
  end
end
