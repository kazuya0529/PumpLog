class DayOfWeek < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Mon' },
    { id: 3, name: 'Tue' },
    { id: 4, name: 'Wed' },
    { id: 5, name: 'Thu' },
    { id: 6, name: 'Fri' },
    { id: 7, name: 'Sat' },
    { id: 8, name: 'Sun' }
  ]

  include ActiveHash::Associations
  has_many :workout_menus
end