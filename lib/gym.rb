class Gym
 ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self

  end

  def self.all
    ALL
  end

  def memberships
    #Access all memberships => [Memberships]
    #determine wheter or not the membership belongs to this gym (self)
    Membership.all.select do |m|
      m.gym == self
    end
  end

  def lifters
    Membership.all.collect do |m|
      m.lifter
    end
  end

  def total_lift
    sum = 0
    Lifter.all.each do |lifter|
      sum += lifter.lift_total
    end
    sum
  end


end
