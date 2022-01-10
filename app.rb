require "tty-table"
require "./store_item.rb"
require "./food.rb"
require "./not_food.rb"

# create/read/update/delete store items

item1 = Food.new(name: "Brookside Dark Chocolate", color: "brown", price: 4.99, shelf_life: "6 months")
item2 = NotFood.new(name: "Polka-dotted Headband", color: "pink and white", price: 9.99, return_policy: "30 days")
item3 = NotFood.new(name: "iPhone 13 Pro", color: "Sierra Blue", price: 899, return_policy: "14 days")

items = 3

puts "RO'S RACK"
puts "Items (#{items} total)"
# puts item1.name

table = TTY::Table.new(header: ["item", "name", "price", "color", "shelf_life", "return_policy"], rows: [[1, "Brookside Dark Chocolate", 4.99, "browm", "6 months", "3 days"], [2, "Polka-dotted Headband", "9.99", "pink and white", "NA", "30 days"], [3, "iPhone 13 Pro", 899, "sierra blue", "NA", "14 days"]])


# render method formats table nicely
puts table.render(:ascii)