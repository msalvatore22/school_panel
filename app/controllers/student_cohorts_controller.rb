class StudentCohortsController < ApplicationController
  def edit
    @student_cohort = StudentCohort.find(params[:id])  
  end

  def update
    @student_cohort = StudentCohort.find(params[:id])
	
   if @student_cohort.update_attributes(student_params)
      redirect_to :action => 'show', :id => @student
   else
      render :action => 'edit'
   end
  end

  def create
    @student_cohort = StudentCohort.new(student_params)

    if @student_cohort.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def destroy
    studentCohort.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def student_cohort_params
    params.require(:student_cohort).permit(:student_id, :cohort_id)
  end


end
