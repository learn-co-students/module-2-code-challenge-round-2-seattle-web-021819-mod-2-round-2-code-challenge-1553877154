class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
    @rating = [1,2,3,4,5]
  end

  def create
    @appearance = Appearance.new
    @appearance.attributes = appearance_params

    if @appearance.valid?
      @appearance.save
      redirect_to episode_path(@appearance.episode)
    else
      render :new
    end
  end



  private

  def appearance_params
    params.require(:appearance).permit!
  end
end
