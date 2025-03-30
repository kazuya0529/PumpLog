class CreateWorkoutMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :workout_menus do |t|
      t.integer    :day_of_week_id,      null: false
      t.integer    :menu_id,             null: false
      t.integer    :rep_id,              null: false
      t.integer    :training_set_id,     null: false
      t.integer    :dumbbell_weight_id,  null: false

      t.timestamps
    end
  end
end
