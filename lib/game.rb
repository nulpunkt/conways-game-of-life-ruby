class Game
  def initialize width, height
    @width = width
    @height = height
  end

  def step old
    new = Grid.new
    cells { | x, y |
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

  private

  def cells
    for i in 0..@width-1 do
      for j in 0..@height-1 do
        yield i, j
      end
    end
  end
end
