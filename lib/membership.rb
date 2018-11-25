class Membership
  ALL = []

  attr_reader :cost, :lifter, :gym

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    self.class.all << self
  end

  def self.all
    ALL
  end


end
