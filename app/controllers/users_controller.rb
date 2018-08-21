class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @gardens = Garden.where(user: current_user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to_user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
