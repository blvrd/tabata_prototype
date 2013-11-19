class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    
    if @user.save
      session[:user_id] = @user.id
      redirect_to workouts_url
    else
      # TODO add flash error
      render 'new'
    end
  end
  
  
end
