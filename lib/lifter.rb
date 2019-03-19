class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end


  def self.all
    @@all
  end

  def lifters
    Membership.all.select {|i| i.lifter == self}
  end

  def gyms
    lifters.all.collect(&:gym)
  end

  def self.average_lift
    # average lift total of all lifters
    lifters_lift_total = Lifter.all.collect(&:lift_total).sum
    (lifters_lift_total / Lifter.all.length).round(2)
  end

  def total_cost
    lifters.collect {|i| i.cost}.sum
  end

  def sign_up(cost, gym)
    Membership.new(cost, gym, self)
  end


end



#   - Get a list of all lifters
#
#   - Get a list of all the memberships that a specific lifter has
#
#   - Get a list of all the gyms that a specific lifter has memberships to
#
#   - Get the average lift total of all lifters
#
#   - Get the total cost of a specific lifter's gym memberships
#
#   - Given a gym and a membership cost, sign a specific lifter up for a new gym
