class AddDateToWorkoutMenus < ActiveRecord::Migration[7.1]
  def change
    add_column :workout_menus, :date, :date
  end
end
