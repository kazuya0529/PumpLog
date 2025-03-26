class Set < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }
  ] + (1..10).map { |n| { id: n + 1, name: n.to_s } }

  include ActiveHash::Associations
  has_many :workout_menus
end