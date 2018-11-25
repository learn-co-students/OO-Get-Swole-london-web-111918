require_relative '../environment.rb'

def reload
  load 'config/environment.rb'
end

twenty4 = Gym.new("24 Hour Fitness")
virgin = Gym.new("Virgin Active")
la_fitness = Gym.new("LA Fitness")

jordan = Lifter.new("Jordan", 9999999)
jordan_member1 = jordan.sign_up(twenty4, 40)
jordan_member2 = jordan.sign_up(virgin, 80)
jordan_member3 = jordan.sign_up(la_fitness, 30)

adam = Lifter.new("Adam", 1000000)
adam_member1 = adam.sign_up(la_fitness, 30)

binding.pry
puts "amazing"
