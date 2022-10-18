require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"
puts "Adding employees to store 1..."

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Anderson", hourly_rate: 50)
@store1.employees.create(first_name: "Bob", last_name: "Builder", hourly_rate: 50)
@store1.employees.create(first_name: "Carol", last_name: "Checkers", hourly_rate: 40)
@store1.employees.create(first_name: "David", last_name: "Deville", hourly_rate: 40)
@store1.employees.create(first_name: "Elena", last_name: "England", hourly_rate: 40)

puts
puts "Adding employees to store 2..."

@store2.employees.create(first_name: "Avery", last_name: "Ankers", hourly_rate: 60)
@store2.employees.create(first_name: "Burley", last_name: "Bucks", hourly_rate: 50)
@store2.employees.create(first_name: "China", last_name: "Cumberbatch", hourly_rate: 50)
@store2.employees.create(first_name: "Daemon", last_name: "Dereks", hourly_rate: 40)
@store2.employees.create(first_name: "Evelyn", last_name: "Edmunds", hourly_rate: 40)
@store2.employees.create(first_name: "Frank", last_name: "Fosters", hourly_rate: 40)