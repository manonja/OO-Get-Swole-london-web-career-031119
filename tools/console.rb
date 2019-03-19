# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("bighead", 150)
l2= Lifter.new("Pamela", 60)
l3 = Lifter.new("oliver", 120)
l4 = Lifter.new("Georgie", 120)

#
g1 = Gym.new("BXR")
g2 = Gym.new ("Thirdspace")
g3 = Gym.new ("Sweat Me")
g4 = Gym.new ("WeightR")

m1 = Membership.new(200, g1, l1)
m5 = Membership.new(200, g1, l3)
m6 = Membership.new(200, g1, l4)
m2 = Membership.new(170, g2, l3)
m3 = Membership.new(200, g3, l4)
m4 = Membership.new(200, g4, l2)

l1.sign_up('300', 'trx')
l2.sign_up('140', 'bigassgym')





# binding.pry

puts "Gains!"
