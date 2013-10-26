class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :exercise
      t.integer :total_reps

      t.timestamps
    end
  end
end
