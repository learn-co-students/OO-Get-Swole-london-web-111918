
class Lifter

  attr_reader :name, :lift_total

  @@all  = []
  @@total_lifts = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
    @@total_lifts << @lift_total
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|m| m.lifter == self}
  end

  def gyms
    memberships.collect {|m| m.gym}
  end

  def self.average
    (@@total_lifts.reduce(:+).to_f)/(@@total_lifts.length).to_f
  end

  def total_cost
    array = self.memberships.collect {|m| m.cost}
    array.reduce(:+)
  end

  def new_membership(gym, cost)
    Membership.new(cost, self, gym)
  end

end
