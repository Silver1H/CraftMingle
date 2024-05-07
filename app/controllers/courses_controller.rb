class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def create
    current_user.courses.create!(subject: params['course']['subject'])

    redirect_to root_url
  end

  def show
    @course = Course.find(params[:id])
  end
end
