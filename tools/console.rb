require_relative '../environment.rb'

def reload
  load 'config/environment.rb'
end

jordan = Lifter.new("Jordan", 9999999)
serena = Lifter.new("Serena", 55)
dan = Lifter.new("Dan", 60)
twenty4 = Gym.new("24 Hour Fitness")
anytime = Gym.new("Anytime Fitness")
fitclub = Gym.new("Fit Club")
virgin = Gym.new("Virgin Active")
hole_in_pocket = Membership.new(40, jordan, twenty4)
m1 = Membership.new(38, serena, anytime)
m2 = Membership.new(60, dan, virgin)
m3 = Membership.new(120, jordan, fitclub)
m4 = Membership.new(40, serena, twenty4)



binding.pry
 puts "amazing"
