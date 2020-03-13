class Creature
  def initialize(x,y)
      @pos_x, @pos_y = x, y
      @moves = Array.new(8, 1)
  end

  def set_moves(moves)
    @moves = moves.map {|m| [m + rand(-1..1), 0].max }
  end

  def spawn
    new_creature = Creature.new(@pos_x, @pos_y)
    new_creature.set_moves(@moves)
    new_creature
  end

  def get_move
    direction_array = Array.new
    direction = 0
    @moves.each do |count|
      direction_array.append(Array.new(count, direction)).flatten!
      direction += 1
    end
    direction_array.sample
  end

  def display
    puts @pos_x, @pos_y
    puts @moves
  end
end

class World
  def initialize(w, h)
    @width, @height = w, h
    @game_map = Array.new(w * h, 0)

    @food_map = Array.new(w * h, 0)
    @creatures = Array.new(10)
  end

  def jungle(x, y, w, h)
    (y..y + h).each {|y1|
      (x..x + w).each {|x1|
        @game_map[self.get_tile_address(x1, y1)] += 1
      }
    }

  end

  def get_tile(x, y)
    @game_map[self.get_tile_address(x, y)]
  end

  def get_tile_address(x, y)
    x + y * @width
  end

  def display
    puts @game_map
  end
end

creature = Creature.new(5, 5)
puts "Creature 1"
creature.display
puts Move: creature.get_move

new_creature = creature.spawn
puts "Creature 2"
new_creature.display
puts Move: new_creature.get_move

world = World.new(30, 30)
world.jungle(10, 10, 10, 10)

world.display