class StartPositions
  def blinker
    start = Grid.new 5, 5
    start.alive! 2, 1
    start.alive! 2, 2
    start.alive! 2, 3
    start
  end

# .....
# ..*..
# ...*.
# .***.
  def glider
    start = Grid.new 70, 30
    start.alive! 2, 1
    start.alive! 3, 2
    start.alive! 1, 3
    start.alive! 2, 3
    start.alive! 3, 3
    start
  end
end

