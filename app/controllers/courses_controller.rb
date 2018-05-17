class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
    @cohorts = Cohort.all
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(courses_params)

    if @course.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end

  end

  def update
    @course = Course.find(params[:id])
	
   if @course.update_attributes(course_params)
      redirect_to :action => 'show', :id => @course
   else
      render :action => 'edit'
   end
  end

  def destroy
    Course.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def courses_params
    params.require(:course).permit(:name, :total_in_class_hours)
  end
end
