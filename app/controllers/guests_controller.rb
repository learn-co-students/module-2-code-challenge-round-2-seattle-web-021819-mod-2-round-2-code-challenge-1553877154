class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest= Guest.new
  end

  def create
    @guest=Guest.new(guest_params)
      if @guest.save
        redirect_to @guest
      else
        redirect_to :new
      end
    end

    def show
      @guest=Guest.find(params[:id])
    end

    def edit
      @guest = Guest.find(params[:id])
    end

    def update
      @guest = Guest.find(params[:id])
        @guest.attributes = guest_params
        if @guest.update(guest_params)
          redirect to @guest
        else
          render :edit
        end
      end

      ##############maybe a bad setup


    private

    def guest_params
      params.require(:guest).permit!
    end
end
