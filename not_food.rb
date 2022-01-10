require "./store_item.rb"

class NotFood
  include Store
  attr_accessor :shelf_life

  def initialize (options_hash)
    super
    @shelf_life = "NA"
  end
end