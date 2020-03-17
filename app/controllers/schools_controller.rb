class SchoolsController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]

  def idnex
    @school = School.all
  end

  def show
    @school = current_user.schools.find(params[:id])
  end

  def new
    @school = School.new
  end

  def edit
  end

  def create
    @school = School.new(school_params)
    @school.user_id = current_user.id
    @school.save!
    redirect schools_path	
  end

  private

  def school_params
    params.require(:school).permit(:school_class, :name, :content, :test, :evaluation1)
  end
end