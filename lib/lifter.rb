
class Lifter

  attr_reader :name, :lift_total

  LIFTERS = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    LIFTERS << self
  end

  def self.all
    LIFTERS
  end

  def memberships
    #Access membership => [memberships]
    #Select all memberships for specific member
    Membership.all.select do |m|
      #compare whether or not lifter property == this lifter
      m.lifter == self
    end

  end

  def gyms
    #Access the Memberships.all array
    #Determine whether or not the memberships are mine/lifters
    my_memberships = self.memberships
    #create array of gyms from the memberships array
    my_memberships.map do |m|
      m.gym
    end
  end

  def self.lift_average
    sum = 0
    n = LIFTERS.count

    LIFTERS.each do |person|
      sum += person.lift_total
    end
    sum.to_f/n.to_f
  end

  def total_cost
    sum = 0
    memberships.each do |session|
      sum += session.cost
    end
    sum
  end

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end

end
