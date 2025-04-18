class WorkoutMenusController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @workout_menus = user_signed_in? ? current_user.workout_menus : []
  end

  def new
    @workout_menu = WorkoutMenu.new
  end

  def create
    @workout_menu = WorkoutMenu.new(workout_menu_params)
    @workout_menu.user = current_user
    if @workout_menu.save
      redirect_to workout_menus_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def workout_menu_params
    params.require(:workout_menu).permit(
      :menu_id,
      :rep_id,
      :training_set_id,
      :dumbbell_weight_id,
      :date
    )
  end
end