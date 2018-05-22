class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    @student_cohort = StudentCohort.create(cohort_id: params[:cohort_id], student_id: params[:student_id])

    if @student.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end

  end

  def update
    @student = Student.find(params[:id])
	
   if @student.update_attributes(student_params)
      redirect_to :action => 'show', :id => @student
   else
      render :action => 'edit'
   end

  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :highest_completed_education)
  end
end
