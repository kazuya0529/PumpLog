class TrainingSet < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }
  ] + (1..10).map.with_index(2) { |num, i| { id: i, name: "#{num}set" } }

  include ActiveHash::Associations
  has_many :workout_menus
end