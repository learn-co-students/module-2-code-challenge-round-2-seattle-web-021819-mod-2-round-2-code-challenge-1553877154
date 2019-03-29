class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
      @episode = Episode.find(params[:id])
  end

    def new
      @episode = Episode.new
    end

    def create
      @episode = Episode.create(episode_params)
      redirect_to @episode
    end

    def update
      @episode = Episode.find(params[:id])
      @episode.update(episode_params)

      if @episode.save
        redirect_to @episode
      else
        render :edit
      end
    end

    def edit
      @episode = Episode.find(params[:id])
    end

    private

    def episode_params
      params.require(:episode).permit(:date, :number, :guest_id)
    end

end






    


