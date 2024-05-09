class BookingsController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @booking = Booking.new
  end

  def create
    @course = Course.find(params[:course_id])
    @booking = Booking.new(booking_params)
    @booking.course = @course
    @booking.user = current_user
    if @booking.save
      redirect_to course_booking_path(@course, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @course = Course.find(@booking.course_id)
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
