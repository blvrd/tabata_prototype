# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


exercises = %w(Pushups Squats Burpees Pullups Jumprope Scissors)
reps = (30..80).to_a

15.times do 
  workout = Workout.new
  workout.exercise = exercises.sample
  workout.total_reps = reps.sample
  workout.save
end
