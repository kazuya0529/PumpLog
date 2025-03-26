class DumbbellWeight < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }
  ] + (5..50).step(5).map.with_index(1) { |kg, i| { id: i + 1, name: "#{kg}kg" } }

  include ActiveHash::Associations
  has_many :workout_menus
end