class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @episodes = Episode.all
    @guests = Guest.all
  end

   def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
      @appearance.save
      redirect_to episode_path(@appearance.episode)
    else
      redirect_to new_appearance_path
    end
  end

  private
  
  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end

 end