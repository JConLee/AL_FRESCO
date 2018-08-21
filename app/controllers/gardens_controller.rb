class GardensController < ApplicationController
  def show
    @garden = Garden.find(params[:id])
  end

  def edit
  end

  def new
  end


end

