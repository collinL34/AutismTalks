class UsersController < ApplicationController

  def index    
  end

  def new
    @user = User.new()
  end

  def show
  end

  def create
    @user  = User.new(params[:user_params])
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :zip_code, :city, :state, :email, :password)
  end
end