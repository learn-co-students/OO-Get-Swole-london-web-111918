class Gym
 ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
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
    memberships.map {|membership| membership.lifter}
  end

  def find_lifters_by_name
    lifters.map {|lifter| lifter.name}
  end

  def member_lift_total
    lifters.map {|lifter| lifter.lift_total}.reduce(:+)
  end

end
