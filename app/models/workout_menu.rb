class WorkoutMenu < ApplicationRecord
  belongs_to :user
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :menu
  belongs_to :rep
  belongs_to :training_set
  belongs_to :dumbbell_weight

  NO_DUMBBELL_MENUS = [
    "逆手懸垂",
    "スクワット",
    "懸垂",
    "アブローラー",
    "ハンギングレッグレイズ"
  ]

  validates :menu_id, :rep_id, :training_set_id,
            numericality: { other_than: 1 }

  validates :dumbbell_weight_id, numericality: { other_than: 1 }, unless: :no_dumbbell_required?

  def no_dumbbell_required?
    menu&.name.in?(NO_DUMBBELL_MENUS)
  end
end