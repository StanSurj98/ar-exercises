require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
p @store1

puts "----------"

@store2 = Store.find_by(name: "Gastown")
p @store2
