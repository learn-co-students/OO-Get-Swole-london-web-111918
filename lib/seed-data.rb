require 'pry'
require 'lifter.rb'
require 'membership.rb'
require 'gym.rb'

bob = Lifter.new("Bob", 180)
jim = Lifter.new("Jim", 150)
lucy = Lifter.new("Lucy", 140)

top_weights = Gym.new("Top Weights")
big_gains = Gym.new("Big Gains")
max_power = Gym.new("Max Power")
power_lift = Gym.new("Power Lift")

jim_power_lift = Membership.new(jim, power_lift, 40)
lucy_big_gains = Membership.new(lucy, big_gains, 30)
bob_top_weights = Membership.new(bob, top_weights, 50)
jim_max_power = Membership.new(jim, max_power, 45)
lucy_power_lift = Membership.new(lucy, power_lift, 40)

Pry.start
