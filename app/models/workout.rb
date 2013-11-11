class Workout < ActiveRecord::Base
  validates_presence_of :total_reps
end
