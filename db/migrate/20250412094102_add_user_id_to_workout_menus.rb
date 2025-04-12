class AddUserIdToWorkoutMenus < ActiveRecord::Migration[7.1]
  def change
    add_column :workout_menus, :user_id, :integer
  end
end
