require "tty-table"
require "./store_item.rb"
require "./food.rb"
require "./not_food.rb"

# create/read/update/delete store items
item1 = Food.new(item: 1, name: "Brookside Dark Chocolate", color: "brown", price: 4.99, shelf_life: "6 months", return_policy: "1 day")
item2 = NotFood.new(item: 2, name: "Polka-dotted Headband", color: "pink and white", price: 9.99, return_policy: "30 days")
item3 = NotFood.new(item: 3, name: "iPhone 13 Pro", color: "Sierra Blue", price: 899, return_policy: "14 days")

items = 3

puts "RO'S RACK"
puts "Items (#{items} total)"

#initialize tty table
table = TTY::Table.new(header: ["item", "name", "price", "color", "shelf_life", "return_policy"], rows: [[1, "Brookside Dark Chocolate", 4.99, "browm", "6 months", "1 day"], [2, "Polka-dotted Headband", "9.99", "pink and white", "NA", "30 days"], [3, "iPhone 13 Pro", 899, "sierra blue", "NA", "14 days"]])


# render method formats table nicely
puts table.render(:ascii)
puts

switch = true
while switch

  print "[C]reate [R]ead [U]pdate [D]elete [Q]uit: "
  response = gets.chomp
  # create
  if response.downcase == "c"
    array = []
    print "food item? (y/n): "
    fo = gets.chomp.downcase
    if fo == "y"
      print "shelf_life: "
      sh = gets.chomp
    else
      sh = "NA"
    end
    print "item: "
    array << it = gets.chomp.to_i
    print "name: "
    array << na = gets.chomp
    print "price: "
    array << pr = gets.chomp.to_f
    print "color: "
    array << co = gets.chomp
    array << sh
    print "return_policy: "
    array << re = gets.chomp
    
    #make a new instance
    if fo == "y"
      item = Food.new(item: it, name: na, price: pr, color: co, return_policy: re)
    elsif fo == "n"
      item = NotFood.new(item: it, name: na, price: pr, color: co, shelf_life: sh, return_policy: re)
    end

    # adds new data to table
    table << array
    puts table.render(:ascii)
  end

  # read
  if response.downcase == "r"
    print "Enter item number: "
    number = gets.chomp.to_i
    #i dunno how to pull the instance
    p table.row(number-1)
  end

  #quit out of program
  if response.downcase == "q"
    puts "Goodbye!"
    switch = false
  end
end