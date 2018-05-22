class TeacherCohortsController < ApplicationController
  def edit
    @teacher_cohort = TeacherCohort.find(params[:id])  
  end

  def update
    @teacher_cohort = TeacherCohort.find(params[:id])
	
   if @teacher_cohort.update_attributes(teacher_cohort_params)
      redirect_to :action => 'show', :id => @teacher
   else
      render :action => 'edit'
   end
  end

  def create
    @teacher_cohort = TeacherCohort.new(teacher_cohort_params)

    if @teacher_cohort.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def destroy
    TeacherCohort.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def teacher_cohort_params
    params.require(:teacher_cohort).permit(:teacher_id, :cohort_id)
  end


end
