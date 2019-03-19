class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select { |i| i.gym == self }
  end

  def lifters
    memberships.map(&:lifter)
  end

  def lifters_name
    lifters.map(&:name)
  end

  def combined_lift_total
    lifters.collect(&:name).sum
  end


end


# - Get a list of all gyms - DONE
#
# - Get a list of all memberships at a specific gym
#
# - Get a list of all the lifters that have a membership to a specific gym
#
# - Get a list of the names of all lifters that have a membership to that gym
#
# - Get the combined lift total of every lifter has a membership to that gym
