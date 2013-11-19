class User < ActiveRecord::Base
  has_secure_password

  has_many :workouts
  
  def pushups
    pushup_workouts = self.workouts.where(exercise: "pushups")
    pushup_count = 0
    pushup_workouts.each do |workout|
      pushup_count += workout[:total_reps]
    end
    return pushup_count
  end

  def squats
    squat_workouts = self.workouts.where(exercise: "squats")
    squat_count = 0
    squat_workouts.each do |workout|
      squat_count += workout[:total_reps]
    end
    return squat_count
  end

  def burpees
    burpee_workouts = self.workouts.where(exercise: "burpees")
    burpee_count = 0
    burpee_workouts.each do |workout|
      burpee_count += workout[:total_reps]
    end
    return burpee_count
  end

  def jumprope_revolutions
    jumprope_workouts = self.workouts.where(exercise: "jumprope")
    rev_count = 0
    jumprope_workouts.each do |workout|
      rev_count += workout[:total_reps]
    end
    return rev_count
  end

  def dips
    dip_workouts = self.workouts.where(exercise: "dips")
    dip_count = 0
    dip_workouts.each do |workout|
      dip_count += workout[:total_reps]
    end
    return dip_count
  end

  def pullups
    pullup_workouts = self.workouts.where(exercise: "pullups")
    pullup_count = 0
    pullup_workouts.each do |workout|
      pullup_count += workout[:total_reps]
    end
    return pullup_count
  end


end

