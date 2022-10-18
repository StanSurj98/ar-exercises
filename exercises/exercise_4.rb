require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

puts "Creating 3 more stores..."

data = [
  {:name => "Surrey", :annual_revenue => 224000, :mens_apparel => false, :womens_apparel => true},
  {:name => "Whistler", :annual_revenue => 1900000, :mens_apparel => true, :womens_apparel => false},
  {:name => "Yaletown", :annual_revenue => 430000, :mens_apparel => true, :womens_apparel => true},
]

data.each do |object|
  Store.create do |store|
    store.name = object[:name]
    store.annual_revenue = object[:annual_revenue]
    store.mens_apparel = object[:mens_apparel]
    store.womens_apparel = object[:womens_apparel]
  end
end

p Store.count
# p Store.all


puts
puts "----------"
puts "Fetching stores that only carry mens apparel..."
# Should be id: 1, 3, 5, 6 (but 3 was deleted)
@mens_stores = Store.where(mens_apparel: true)
p @mens_stores


puts
puts "----------"
puts "Outputting the name & annual revenue for each mens stores..."

@mens_stores.each do |store|
  print "Name: #{store.name}, "
  puts "Annual Revenue: $#{store.annual_revenue}"
end


puts
puts "----------"
puts "Fetching women stores that make under $1M in annual revenue..."

# To protect against SQL injections, using ("string conditional", values-for-?)
@womens_stores = Store.where(
  "womens_apparel = ? AND annual_revenue < ?", true, 1000000
)

# p @womens_stores

@womens_stores.each do |store|
  print "Name: #{store.name}, "
  puts "Annual Revenue: $#{store.annual_revenue}"
end
# Burnaby, Surrey, Yaletown
