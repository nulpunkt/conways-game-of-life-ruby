class Game
  def initialize width, height
    @width = width
    @height = height
  end

  def step old
    new = old.new_of_same_size
    old.cells { | x, y |
      alive_neighbours = old.alive_neighbours(x, y)

      if old.alive?(x, y) and alive_neighbours == 2 then
        new.alive! x, y
      end

      if alive_neighbours == 3 then
        new.alive! x, y
      end
    }
    new
  end
end
