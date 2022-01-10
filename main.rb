require "./food.rb"
require "./not_food.rb"
require "./store_item.rb"

item1 = Food.new(name: "Brookside Dark Chocolate", color: "brown", price: 4.99, shelf_life: "6 months")
item2 = NotFood.new(name: "Polka-dotted Headband", color: "pink and white", price: 9.99, return_policy: "30 days")
item3 = NotFood.new(name: "iPhone 13 Pro", color: "Sierra Blue", price: 899, return_policy: "14 days")

puts item1.shelf_life
item1.print_price_info