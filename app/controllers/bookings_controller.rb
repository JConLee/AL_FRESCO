class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :destroy, :new]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def create
    @user = User.find(params[:user_id])
    @booking = booking.new(booking_params)
    @booking.user = @user
    if
      @booking.save
      redirect_to bookings_path(@user), notice: "Thanks for booking"
    else
      render :new
    end
  end

  def destroy
    @user = @booking.user
    @booking.destroy
    redirect_to booking_path(@user)
  end


private

def find_booking
  @booking = Booking.find(params[:id])
end


def booking_params
  params.require(:booking).permit(:user_id, :garden_id, :date)
end


end

