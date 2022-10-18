require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# stores = Store.create(
#   name: "Burnaby", 
#   annual_revenue: 300000, 
#   mens_apparel: true, 
#   womens_apparel: true
# )

# stores = Store.create(
#   name: "Richmond", 
#   annual_revenue: 1260000, 
#   mens_apparel: false, 
#   womens_apparel: true
# )

# stores = Store.create(
#   name: "Gastown", 
#   annual_revenue: 190000, 
#   mens_apparel: true, 
#   womens_apparel: false
# )

# puts Store.count 
# p Store.all

# This is great and all, but what if I had lots of stores?
# In the future, probably can loop through store data as a hash and fill in tables that way


data = [
  {:name => "Burnaby", :annual_revenue => 300000, :mens_apparel => true, :womens_apparel => true},
  {:name => "Richmond", :annual_revenue => 1260000, :mens_apparel => false, :womens_apparel => true},
  {:name => "Gastown", :annual_revenue => 190000, :mens_apparel => true, :womens_apparel => false},
]

data.each do |object|
  Store.create do |store|
    store.name = object[:name]
    store.annual_revenue = object[:annual_revenue]
    store.mens_apparel = object[:mens_apparel]
    store.womens_apparel = object[:womens_apparel]
  end
end

puts Store.count
p Store.all