class Workout < ActiveRecord::Base
  validates_presence_of :total_reps
  
  belongs_to :user
  
end
