class Grid
  def initialize
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
    @grid[[x,y]]
  end

  def alive! x, y
    @grid[[x,y]] = true
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
