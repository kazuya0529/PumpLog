class CreateWorkoutMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :workout_menus do |t|

      t.timestamps
    end
  end
end
