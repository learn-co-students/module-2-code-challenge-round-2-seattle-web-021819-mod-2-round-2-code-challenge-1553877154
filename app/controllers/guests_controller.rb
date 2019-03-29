class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end



	def show
      @guest = Guest.find(params[:id])
    end

    def new
      @guest = Guest.new
    end

    def create
      @guest = Guest.create(guest_params)
      redirect_to @guest
    end

    def update
      @guest = Guest.find(params[:id])
      @guest.update(guest_params)

      if @guest.save
        redirect_to @guest
      else
        render :edit
      end
    end

    def edit
      @guest = Guest.find(params[:id])
    end

    private

    def guest_params
      params.require(:guest).permit(:name, :occupation)
    end

  end


