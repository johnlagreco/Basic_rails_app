class UsersController < ApplicationController
  def index
  end

  def new
  	@users = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to user_path @user
  	else
  		redirect_to new_user_path
  	end
  end
  
end
