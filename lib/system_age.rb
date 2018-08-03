require 'pry'
require_relative './roll_dice'

def refine_stellar_age(base_age, step_a, step_b)
  roll_2 = roll_dice(1, -1)
  roll_3 = roll_dice(1, -1)
  age = base_age
  age += step_a * roll_2
  age += step_b * roll_3
  return age
end

def determine_stellar_age
  age_info = []
  population = ''
  final_age = 0
  base_age = 0
  age_step_a = 0
  age_step_b = 0
  roll_1 = roll_dice(3)
  if roll_1 == 3
     population = 'Extreme Population I'
   elsif roll_1 >= 4 && roll_1 <= 6
     population = 'Young Population I'
     base_age = 0.1
     age_step_a = 0.3
     age_step_b = 0.05
   elsif roll_1 >= 7 && roll_1 <= 10
     population = 'Intermediate Population I'
     base_age = 2.0
     age_step_a = 0.6
     age_step_b = 0.1
   elsif roll_1 >= 11 && roll_1 <= 14
     population = 'Old Population I'
     base_age = 5.6
     age_step_a = 0.6
     age_step_b = 0.1
   elsif roll_1 >= 15 && roll_1 <= 17
     population = 'Intermediate Population II'
     base_age = 8
     age_step_a = 0.6
     age_step_b = 0.1
   else
     population = 'Extreme Population II'
     base_age = 10
     age_step_a = 0.6
     age_step_b = 0.1
  end
  age_info << population
  if age_step_a > 0
    final_age = refine_stellar_age(base_age, age_step_a, age_step_b)
  end
  age_info << final_age
  return age_info
end

system_age = determine_stellar_age
