def roll_dice(dice, adds = 0)
  total = 0
  dice.times do
    roll = rand(6)+1
    total += roll
  end
  total += adds
  return total
end
