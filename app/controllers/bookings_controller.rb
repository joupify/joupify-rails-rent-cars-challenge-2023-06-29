class BookingsController < ApplicationController

  def create
    @car = Car.find(params[:car_id])
    @booking = @car.bookings.new(booking_params)
    @booking.car = @car
    @booking.user = current_user

    if @booking.save
      redirect_to car_path(@car), notice: 'Booking successfully created.'
    else
      render :'car/show', status: :unprocessable_entity
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :accepted)
  end
end
