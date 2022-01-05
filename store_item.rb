
# brookside_dark_chocolate = {
#   color: "brown",
#   price: 4.99,
# }

# polka_dotted_headband = {
#   "color" => "pink and white",
#   "price" => 9.99,
# }

# iphone_thirteen_pro = {
#   :color => "sierra blue",
#   :price => 899,
# }

# p brookside_dark_chocolate
# p polka_dotted_headband
# p iphone_thirteen_pro

#rewrite as a class
class Store
  attr_reader :name, :color, :price
  attr_writer :price
  #attr_accessor gives you a getter and setter (reader and writer)

  def initialize(input_item_name, input_color, input_price)
    @name = input_item_name
    @color = input_color
    @price = input_price
  end

  def print_price_info
    puts "The #{name} is $#{price}."
  end
end

item1 = Store.new("Brookside Dark Chocolate", "brown", 4.99)
item2 = Store.new("Polka-dotted Headband", "pink and white", 9.99)
item3 = Store.new("iPhone 13 Pro", "Sierra Blue", 899)

puts item1.name
puts item1.color
puts item1.price
item1.price = 2.99
puts item1.price
puts item1.print_price_info
puts ""
puts item2.name
puts item2.color
puts item2.price
puts item2.print_price_info
puts ""
puts item3.name
puts item3.color
puts item3.price
puts item3.print_price_info
# p item2
# p item3
