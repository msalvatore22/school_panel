class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def create
    @student = Student.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      highest_completed_education: params[:highest_completed_education]
    )
  end

  def update
  end

  def destroy
  end
end
