class DumbbellWeight < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }
  ] + (5..50).map.with_index(2) { |kg, i| { id: i, name: "#{kg}kg" } }

  include ActiveHash::Associations
  has_many :workout_menus
end