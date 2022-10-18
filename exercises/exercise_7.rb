require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"
puts
# Your code goes here ...
puts "Trying to add stores that fail validation..."

# Adding ! raises the error, without it -> there is an error but it won't pop
@store7 = Store.create!(name: "Ab") 


@store7.errors.each do |error|
  puts error.message
end
