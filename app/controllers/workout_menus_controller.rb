class WorkoutMenusController < ApplicationController
  def index
  end

  def new
    @workout_menu = WorkoutMenu.new
  end

  def create
    @workout_menu = WorkoutMenu.new(workout_menu_params)
    if @workout_menu.save
      redirect_to workout_menus_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def workout_menu_params
    params.require(:workout_menu).permit(
      :day_of_week_id,
      :menu_id,
      :rep_id,
      :set_id,
      :dumbbell_weight_id
    )
  end
end
