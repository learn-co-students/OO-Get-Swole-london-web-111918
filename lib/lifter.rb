require 'pry'
require '../membership.rb'
require '../gym.rb'

class Lifter

  attr_accessor :lifter, :lift_total

  @@all = []

  def initialize(lifter, lift_total)
    @lifter = lifter
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

end

Pry.start
