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
    Membership.all.select do |m|
      m.gym == self
    end
  end

  def all_lifters
    self.memberships.collect {|memship| memship.lifter}
  end

  def lifter_names
    self.all_lifters.collect {|member| member.name}
  end

  def combined_lift_total
    array = self.all_lifters.collect {|member| member.lift_total}
    array.reduce(:+)
  end

end
