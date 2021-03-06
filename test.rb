#!/usr/bin/ruby -w

class Customer
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  def display_details
    puts "Customer id: #{@cust_id}"
    puts "Customer name:  #{@cust_name}"
    puts "Customer address:  #{@cust_addr}"
  end

end

END {
  puts "Terminating Ruby Program."
}

BEGIN {
  puts "Initializing Ruby Program."
}

cust1 = Customer.new(1, "one", "here")
cust2 = Customer.new(2, "two", "there")

puts cust1.display_details
puts cust2.display_details

ary = [ "fred", 10, 3.14, "This is a string", "The last element"]
ary.each do |i|
  puts i
end

colors = { "red" => 0xf00, "greed" => 0x0f0, "blue" => 0x00f }
colors.each do |key, value|
  print key, " is ", value, "\n"
end

