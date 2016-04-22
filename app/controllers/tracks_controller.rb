class TracksController < ApplicationController
  before_action :authenticate_user!

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to root_path
    else
      redirect_to new_track_path
      p @track.errors.full_messages
    end
  end

  private
  def track_params
    params.require(:track).permit(:track, :title, :description)
  end
end
