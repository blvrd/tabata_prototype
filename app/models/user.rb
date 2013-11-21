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
  
  def minutes_worked
    return self.workouts.count * 4
  end

  def pushups_per_minute
    pushup_workouts = self.workouts.where(exercise: "pushups")
    return self.pushups / (pushup_workouts.count * 4)
  end
  
  def squats_per_minute
    squat_workouts = self.workouts.where(exercise: "squats")
    if self.squats != 0
      return self.squats / (squat_workouts.count * 4)
    else
      return 0
    end
  end

  def burpees_per_minute
    burpee_workouts = self.workouts.where(exercise: "burpees")
    if self.burpees != 0
      return self.burpees / (burpee_workouts.count * 4)
    else
      return 0
    end
  end

  def jumprope_revolutions_per_minute
    jumprope_workouts = self.workouts.where(exercise: "jumprope")
    if self.jumprope_revolutions != 0
      return self.jumprope_revolutions / (jumprope_workouts.count * 4)
    else
      return 0
    end
  end

  def dips_per_minute
    dip_workouts = self.workouts.where(exercise: "dips")
    if self.dips != 0
      return self.dips / (dip_workouts.count * 4)
    else
      return 0
    end
  end

  def pullups_per_minute
    pullup_workouts = self.workouts.where(exercise: "pullups")
    if self.pullups != 0
      return self.pullups / (pullup_workouts.count * 4)
    else
      return 0
    end
  end
  
end

