class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end
  
  def create
    @workout = Workout.create
    @workout.exercise = params[:exercise]
    @workout.save
    redirect_to workout_url
  end
  
  def show
    
  end
end
