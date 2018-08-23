class GardensController < ApplicationController

  # before_action :find_garden, only: [:show, :edit, :destroy]

  def index
    @gardens = Garden.where.not(latitude: nil, longitude: nil)

    @markers = @gardens.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude
      }
    # @gardens = Garden.all
    # http://www.localhost:3000/gardens/3/bookings/1
  end

  end

  def show
    @garden = Garden.find(params[:id])
  end

  def new
    @garden = Garden.new
    @user = current_user
  end

  def edit
  end

  def update
    @garden.update(garden_params)
    redirect_to user_garden_path(@garden)
  end

  def create
    @user = User.find(params[:user_id])
    @garden = Garden.new(garden_params)
    @garden.user = @user
    if
      @garden.save
      redirect_to user_path(@user), notice: "Thanks for creating a garden"
    else
      flash[:alert] = "Something went wrong"
      render :new
    end
  end

  def destroy
    @user = @garden.user
    @garden.destroy
    redirect_to user_path(@user)
  end


private

def find_garden
  @garden = Garden.find(params[:user_id])
end


def garden_params
  params.require(:garden).permit(:title, :address, :photo)
end


end

