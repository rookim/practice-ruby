require "./store_item.rb"

class NotFood
  attr_accessor :return_policy
  include Store

  def initialize (options_hash)
    @return_policy = options_hash[:return_policy]
  end
end