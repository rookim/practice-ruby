module Store
  attr_accessor :name, :color, :price
  def initialize (options_hash)
    @name = options_hash[:name]
    @color = options_hash[:color]
    @price = options_hash[:price]
  end

  def print_price_info
    puts "The #{name} is $#{price}."
  end
end