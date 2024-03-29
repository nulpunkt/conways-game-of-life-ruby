require	'./lib/game'

describe Game do
  it "does the Block" do
    start = Grid.new 5, 5
    start.alive! 1, 1
    start.alive! 1, 2
    start.alive! 2, 1
    start.alive! 2, 2

    game = Game.new

    game.step(start).should be_eq start
  end

  it "does the Blinker" do
    start = Grid.new 5, 5
    start.alive! 2, 1
    start.alive! 2, 2
    start.alive! 2, 3

    expected = Grid.new 5, 5
    expected.alive! 1, 2
    expected.alive! 2, 2
    expected.alive! 3, 2

    game = Game.new

    game.step(start).should be_eq expected
  end
end
