require 'pry'

class Lifter

  attr_accessor :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    self.memberships.map(&:gym)
  end

  def self.average_lift_total
    self.all.map {|lifter| lifter.lift_total}.reduce(:+) / self.all.length
  end

  def membership_costs
    self.memberships.map {|membership| membership.cost}.reduce(:+)
  end

  def sign_up(gym, cost)
    new_membership = Membership.new(self, gym, cost)
  end

end

class Membership

  attr_accessor :lifter, :gym, :cost

  @@all = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end

end

class Gym

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    self.memberships.map(&:lifter)
  end

  def lifters_names
    self.lifters.map(&:name)
  end

  def combined_lift_total
    self.lifters.map(&:lift_total).reduce(:+)
  end

end

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
