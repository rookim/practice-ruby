require "./store_item.rb"

class Food 
  attr_accessor :shelf_life
  include Store

  def initialize (options_hash)
    @shelf_life = options_hash[:shelf_life]
  end
end