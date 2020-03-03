class Box
  def initialize(w,h)
    @width, @height = w, h
  end

  def print_width
    @width
  end

  def print_height
    @height
  end
end

box = Box.new(10, 20)

x = box.print_width
y = box.print_height

puts "Width of box is : #{x}"
puts "Height of box is : #{y}"