require "./store_item.rb"

class Food 
  include Store
  attr_accessor :shelf_life

  def initialize (options_hash)
    super
    @shelf_life = options_hash[:shelf_life]
  end
end

item1 = Food.new(name: "Brookside Dark Chocolate", color: "brown", price: 4.99, shelf_life: "6 months")
# item2 = Store.new(name: "Polka-dotted Headband", color: "pink and white", price: 9.99, return_policy: "30 days")
# item3 = Store.new(name: "iPhone 13 Pro", color: "Sierra Blue", price: 899, return_policy: "14 days")
