class Creature
  def initialize(x,y)
      @pos_x, @pos_y = x, y
      @moves = Array.new(8, 1)
  end

  def set_moves(moves)
    @moves = moves
  end

  def spawn
    new_creature = Creature.new(@pos_x, @pos_y)
    new_creature.set_moves(@moves)
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

