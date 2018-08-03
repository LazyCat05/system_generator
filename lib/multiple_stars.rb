require 'pry'
require_relative './roll_dice.rb'

def multiple_stars_roll
  number_of_stars = 0
  roll = roll_dice(3)
  if 3 <= roll && roll <= 10
    number_of_stars = 1
  elsif 11 <= roll && roll <= 15
    number_of_stars = 2
  else
    number_of_stars = 3
  end
  number_of_stars
end
