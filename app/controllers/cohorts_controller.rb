class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @cohort = Cohort.create(
      name: params[:name],
      start_date: params[:start_date],
      end_date: params[:end_date]
    )
  end

  def update
  end

  def destroy
  end
end
