class FoldersController < ApplicationController
  def index
    drive_id = params[:format]
    drive = Drive.find(drive_id)
    @folders = drive.folders
  end

  def show
  end
end
