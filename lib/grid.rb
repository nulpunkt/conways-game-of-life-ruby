class Grid
  def initialize width, height
    @width = width
    @height = height
    @grid = {}
    @grid.default = false
  end

  def alive_neighbours x, y
    n = 0
    neighbour_coordinates(x, y) { | cx, cy |
      n = n+1 if alive?(cx, cy)
    }
    n
  end

  def alive? x, y
    @grid[{x: x, y: y}]
  end

  def alive! x, y
    @grid[{x: x, y: y}] = true
  end

  def cells
    for i in 0..@width-1 do
      for j in 0..@height-1 do
        yield i, j
      end
    end
  end

  def new_of_same_size
    Grid.new @width, @height
  end

  def eq? other
    @grid == other.grid
  end
  alias_method :==, :eql?

  def grid
    @grid
  end

  private

  def neighbour_coordinates x, y
    for i in -1..1 do
      for j in -1..1 do
          yield x+i, y+j if i != 0 or j != 0
      end
    end
  end
end
