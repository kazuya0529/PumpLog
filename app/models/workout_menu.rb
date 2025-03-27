class WorkoutMenu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :day_of_week
  belongs_to :menu
  belongs_to :rep
  belongs_to :training_set
  belongs_to :dumbbell_weight

  validates :day_of_week_id, :menu_id, :rep_id, :set_id, :dumbbell_weight_id,
             numericality: { other_than: 1 }
end
