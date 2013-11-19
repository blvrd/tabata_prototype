class WorkoutsController < ApplicationController
  def index
    @user = User.find_by_id(session[:user_id])
    @workouts = Workout.all.order('created_at DESC')
  end

  def new
    
  end
  
  def create
    @workout = Workout.new
    @workout.exercise = params[:exercise]
    @workout.total_reps = params[:total_reps]
    @workout.user_id = session[:user_id]

    if @workout.save
      redirect_to workouts_url
    else
      flash.now[:error] = @workout.errors.full_messages
      render :new
    end
  end
  
  def show
    @workout = Workout.find_by_id(params[:id])
  end
end
