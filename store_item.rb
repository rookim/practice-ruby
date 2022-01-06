#rewrite as a class
class Store
  attr_reader :name, :color, :price
  attr_writer :price
  #attr_accessor gives you a getter and setter (reader and writer)

  def initialize options_hash
    @name = options_hash[:name]
    @color = options_hash[:color]
    @price = options_hash[:price]
  end

  def print_price_info
    puts "The #{name} is $#{price}."
  end
end

item2 = Store.new(name: "Polka-dotted Headband", color: "pink and white", price: 9.99)
item3 = Store.new(name: "iPhone 13 Pro", color: "Sierra Blue", price: 899)

class Food < Store
  attr_accessor :shelf_life

  def initialize options_hash
    super
    @shelf_life = options_hash[:shelf_life]
  end
end

item1 = Food.new(name: "Brookside Dark Chocolate", color: "brown", price: 4.99, shelf_life: "6 months")

puts item1.shelf_life
