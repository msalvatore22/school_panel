class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])

  end

  def new
    @cohort = Cohort.new
  end

  def edit
    @cohort = Cohort.find(params[:id])

    @student_cohort_remove = StudentCohort.find_by(cohort_id: params[:id])
    @teacher_cohort_remove = StudentCohort.find_by(cohort_id: params[:id])
    
    if TeacherCohort.find_by(cohort_id: params[:id])
      @teacher_cohort = TeacherCohort.find_by(cohort_id: params[:id])
    else 
      @teacher_cohort = TeacherCohort.new
    end

    if StudentCohort.find_by(cohort_id: params[:id])
      @student_cohort = StudentCohort.find_by(cohort_id: params[:id])
    else 
      @student_cohort = StudentCohort.new
    end

    
  end

  def create


    @cohort = Cohort.new(cohort_params)

    if @cohort.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end

  end

  def update
    @cohort = Cohort.find(params[:id])
	
   if @cohort.update_attributes(cohort_params)
      redirect_to :action => 'show', :id => @cohort
   else
      render :action => 'edit'
   end

  end

  def destroy
    Cohort.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :course_id)
  end

end
