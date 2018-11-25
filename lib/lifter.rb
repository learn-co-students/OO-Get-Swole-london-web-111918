class Lifter

  ALL = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    ALL
  end

  def self.average_lift_total
    total = 0
    lifters = self.all.count
    self.all.each {|lifter| total += lifter.lift_total}
    total.to_f / lifters.to_f
  end

  def memberships
    #Access membership => [memberships]
    #Select all memberships for specific member
    Membership.all.select do |m|
      #compare whether or not lifter property == this lifter
      m.lifter == self
    end

  end

  def membership_costs
    total = 0
    memberships.each {|membership| total += membership.cost}
    total
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
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



end
