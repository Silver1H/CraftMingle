class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    current_user.courses.create!(subject: params['course']['subject'])

    redirect_to root_url
  end
end
