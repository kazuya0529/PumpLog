class RemoveDayOfWeekIdFromWorkoutMenus < ActiveRecord::Migration[7.1]
  def change
    remove_column :workout_menus, :day_of_week_id, :integer
  end
end
