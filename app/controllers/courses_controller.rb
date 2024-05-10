class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    current_user.courses.create!(subject: params['course']['subject'])

    redirect_to root_url
  end

  def show
    @course = Course.find(params[:id])
    @booking = Booking.new
  end
end
