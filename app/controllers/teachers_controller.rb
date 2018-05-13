class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @teacher = Teacher.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      salary: params[:salary],
      highest_completed_education: params[:highest_completed_education]
    )
  end

  def update
  end

  def destroy
  end
end
