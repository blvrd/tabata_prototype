class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all.order('created_at DESC')
  end

  def new
    
  end
  
  def create
    @workout = Workout.create
    @workout.exercise = params[:exercise]
    @workout.save
    redirect_to workout_url
  end
  
  def show
    @workout = Workout.find_by_id(params[:id])
  end
end
