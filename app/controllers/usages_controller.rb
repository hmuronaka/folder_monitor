class UsagesController < ApplicationController
  def index
    folder_id = params[:format]
    @folder = Folder.find(folder_id)
    @usages = @folder.usages

  end

  def show
  end
end
