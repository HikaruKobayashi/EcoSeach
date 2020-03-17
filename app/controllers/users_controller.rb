class UsersController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]

  def new
    @user = User.new
  end

  def ceate
    @user = User.create(user_params)
    if @user.save!
      session[:user_id] = @user.user_id
      redirect_to schools_path
    else
      render ('/users/new')
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to('/users')
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end