require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

@store3 = Store.find_by(id: 3)
p @store3

puts "Deleting Store 3..."
puts "----------"

@store3.destroy

puts "Current Store.count: "
puts Store.count

