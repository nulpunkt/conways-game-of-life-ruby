class StartPositions
  def blinker
    start = Grid.new 5, 5
    start.alive! 2, 1
    start.alive! 2, 2
    start.alive! 2, 3
    start
  end
end
