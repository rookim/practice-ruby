require "./store_item.rb"

class NotFood
  include Store
  attr_accessor :return_policy

  def initialize (options_hash)
    super
    @return_policy = options_hash[:return_policy]
  end
end