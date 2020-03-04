class Creature
  def initialize(x,y)
      @pos_x, @pos_y = x, y
      @moves = Array.new(8, 1)
  end
end

class World
  def initialize(w, h)
    @width, @height = w, h
    @game_map = Array.new(w * h, 0)
  end

  def get_tile(x, y)
    @game_map[self.get_tile_address(x, y)]
  end

  def get_tile_address(x, y)
    x + y * @width
  end
end

