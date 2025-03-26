class WorkoutMenu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :day_of_week
  belongs_to :menu
  belongs_to :rep
  belongs_to :set
  belongs_to :dumbbell_weight
end
