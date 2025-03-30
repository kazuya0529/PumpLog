class WorkoutMenu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :menu
  belongs_to :rep
  belongs_to :training_set
  belongs_to :dumbbell_weight

  validates :menu_id, :rep_id, :training_set_id, :dumbbell_weight_id,
             numericality: { other_than: 1 }
end
