class GardensController < ApplicationController

  # before_action :find_garden, only: [:show, :edit, :destroy]

  def index
    @gardens = Garden.all
  end

  def show
  end

  def new
    @garden = Garden.new
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
      redirect_to user_garden_path(@user)
    else
      render :new
    end
  end

  def destroy
    @user = @garden.user
    @garden.destroy
    redirect_to user_garden_path(@user)
  end


private

def find_garden
  @garden = Garden.find(params[:user_id])
end


def garden_params
  params.require(:garden).permit(:title, :address)
end


end

