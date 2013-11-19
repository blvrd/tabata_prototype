class SessionsController < ApplicationController
  def new
    
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to workouts_url
      else
        # TODO add flash error
        render 'new'
      end
    else
      # TODO add flash error
      render 'new'
    end
  end
end
