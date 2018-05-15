class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    
  end

  def new
  end

  def edit
   
  end

  def create
    @course = Course.create(
      name: params[:name],
      total_in_class_hours: params[:total_in_class_hours]
    )

  end

  def update
  end

  def destroy
  end
end
