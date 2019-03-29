class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode= Episode.find(params[:id])
  end

  def edit
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.find(params[:id])
      if @episode.save
        redirect_to @episode
      else
        render :edit
      end
    end

    def rating
      @guest = Guest.order(rating: :desc).limit(3)
    end

end
