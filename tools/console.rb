require_relative '../environment.rb'

def reload
  load 'config/environment.rb'
end

jordan = Lifter.new("Jordan", 9999999)
pat = Lifter.new("Pat", 500)
twenty4 = Gym.new("24 Hour Fitness")
hole_in_pocket = Membership.new(40, jordan, twenty4)
new_pat = Membership.new(100, pat, twenty4)
fit1 = Gym.new("Fitness First")
another = Membership.new(40, jon, fit1)


binding.pry
 puts "amazing"
