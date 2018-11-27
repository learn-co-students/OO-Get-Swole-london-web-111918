class Gym

  attr_accessor :gym

  @@all = []

  def initialize(gym)
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end

end
