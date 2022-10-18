require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Sum of all stores annual_revenue..."

@sum_revenue = Store.sum("annual_revenue")
puts "Total annual revenue: $#{@sum_revenue}"

puts
puts "----------"
puts "Average annual revenue per store..."

@average_revenue = Store.average("annual_revenue")
puts "Average revenue per store: $#{@average_revenue}"


puts
puts "----------"
puts "Number of stores with $1M or more in annual revenue..."

# We can chain together queries
@count_top_stores = Store.where("annual_revenue >= ?", 1000000).count()
p @count_top_stores