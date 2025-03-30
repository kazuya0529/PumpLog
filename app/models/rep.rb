class Rep < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }
  ] + (1..30).map.with_index(2) { |num, i| { id: i, name: "#{num}rep" } }

  include ActiveHash::Associations
  has_many :workout_menus
end