class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def edit
    @teacher = Teacher.find(params[:id])  
  end

  def create
    @teacher = Teacher.new(teachers_params)

    if @teacher.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end

  end

  def update
    @teacher = Reacher.find(params[:id])
	
   if @teacher.update_attributes(teacher_params)
      redirect_to :action => 'show', :id => @teacher
   else
      render :action => 'edit'
   end
  end

  def destroy
    Teacher.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def teachers_params
    params.require(:teachers).permit(:first_name, :last_name, :age, :salary, :highest_completed_education)
  end
end
