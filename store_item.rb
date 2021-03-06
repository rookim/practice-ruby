module Store
  attr_accessor :item, :name, :color, :price, :return_policy
  def initialize (options_hash)
    @item = options_hash[:item]
    @name = options_hash[:name]
    @price = options_hash[:price]
    @color = options_hash[:color]
    @return_policy = options_hash[:return_policy]
  end

  def print_price_info
    puts "The #{name} is $#{price}."
  end
end