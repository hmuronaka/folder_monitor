class DrivesController < ApplicationController
  def index
    @drives = Drive.all
  end

  def show
  end
end
