class User < ApplicationRecord
  has_many :workout_menus
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
