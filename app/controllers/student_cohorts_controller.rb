class StudentCohortsController < ApplicationController
  def edit
    @student_cohort = StudentCohort.find(params[:id])  
  end

  def update
    @student_cohort = StudentCohort.find(params[:id])
	
   if @student_cohort.update_attributes(student_cohort_params)
      redirect_to cohorts_url
   else
      render :action => 'edit'
   end
  end

  def create
    @student_cohort = StudentCohort.new(student_cohort_params)

    if @student_cohort.save
      redirect_to cohorts_url 
    else
      render :action => 'new'
    end
  end

  def destroy
    studentCohort.find(params[:id]).destroy
    redirect_to cohorts_url 
  end

  def student_cohort_params
    params.require(:student_cohort).permit(:student_id, :cohort_id)
  end


end
