class BookingsController < ApplicationController

  def create
    @car = Car.find(params[:car_id])
    @booking = @car.bookings.build(booking_params)

    if @booking.save
      redirect_to car_path(@car), notice: 'Booking successfully created.'
    else
      render :'cars/show', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
